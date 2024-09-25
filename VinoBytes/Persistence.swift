//
//  Persistence.swift
//  VinoDecks
//
//  Created by Logan Rausch on 3/1/24.
//

import CoreData
import Combine
import CloudKit // Import CloudKit to interact with CloudKit APIs

class PersistenceController: ObservableObject {
    static let shared = PersistenceController()
    static let preview = PersistenceController(inMemory: true)

    let container: NSPersistentCloudKitContainer
    private var cancellables = Set<AnyCancellable>()
    private var dataExistsInCloudKit = false // Track if data exists in CloudKit

    init(inMemory: Bool = false) {
        container = NSPersistentCloudKitContainer(name: "StudyCardModel")
        
        // Configure persistent store descriptions
        let description = container.persistentStoreDescriptions.first
        if inMemory {
            description?.url = URL(fileURLWithPath: "/dev/null")
        } else {
            // Enable history tracking and remote change notifications
            description?.setOption(true as NSNumber, forKey: NSPersistentHistoryTrackingKey)
            description?.setOption(true as NSNumber, forKey: NSPersistentStoreRemoteChangeNotificationPostOptionKey)
        }

        // Load persistent stores
        container.loadPersistentStores { storeDescription, error in
            if let error = error as NSError? {
                print("Unresolved CoreData error \(error), \(error.userInfo)")
            } else {
                // Set merge policy and automatic context merging
                self.container.viewContext.mergePolicy = NSMergeByPropertyObjectTrumpMergePolicy
                self.container.viewContext.automaticallyMergesChangesFromParent = true
                
                // Wait for iCloud sync and decide whether to load data from JSON
                self.waitForiCloudSyncAndLoadData()
            }
        }
    }

    private func waitForiCloudSyncAndLoadData() {
        // Check if data already exists in the store
        let fetchRequest: NSFetchRequest<StudyCard> = StudyCard.fetchRequest()
        fetchRequest.fetchLimit = 1

        do {
            let count = try container.viewContext.count(for: fetchRequest)
            if count > 0 {
                // Data exists locally, no need to load from JSON
                print("Data exists in Core Data, skipping JSON load.")
                return
            }
        } catch {
            print("Failed to count StudyCards: \(error)")
        }

        // Check if data exists in CloudKit
        checkIfDataExistsInCloudKit { [weak self] dataExists in
            guard let self = self else { return }
            self.dataExistsInCloudKit = dataExists // Store the result
            if dataExists {
                // Data exists in CloudKit, wait for sync
                print("Data exists in CloudKit, waiting for sync.")
                self.listenForICloudChanges()
            } else {
                // No data in CloudKit, safe to load from JSON
                print("No data in CloudKit, loading from JSON.")
                self.loadFlashcardsFromJSON()
            }
        }
    }

    private func checkIfDataExistsInCloudKit(completion: @escaping (Bool) -> Void) {
        let container = CKContainer(identifier: "iCloud.com.vinobytes.VinoBytes1")
        let privateDatabase = container.privateCloudDatabase

        // Use a predicate with the indexed field
        let predicate = NSPredicate(format: "CD_id != %@", "")
        let query = CKQuery(recordType: "CD_StudyCard", predicate: predicate)
        let queryOperation = CKQueryOperation(query: query)
        queryOperation.resultsLimit = 1

        var foundRecords = false

        queryOperation.recordFetchedBlock = { record in
            foundRecords = true
        }

        queryOperation.queryCompletionBlock = { cursor, error in
            if let error = error as? CKError {
                switch error.code {
                case .unknownItem:
                    // Record type doesn't exist yet; treat as no data in CloudKit
                    print("Record type CD_StudyCard does not exist in CloudKit.")
                    completion(false)
                case .partialFailure:
                    // Handle partial failures, which may contain more detailed errors
                    if let errors = error.userInfo[CKPartialErrorsByItemIDKey] as? [AnyHashable: Error] {
                        for (_, error) in errors {
                            print("Partial error: \(error.localizedDescription)")
                        }
                    }
                    completion(false)
                default:
                    print("Error querying CloudKit: \(error.localizedDescription)")
                    completion(false)
                }
                return
            }
            completion(foundRecords)
        }

        privateDatabase.add(queryOperation)
    }

    private func listenForICloudChanges() {
        // Listen for remote change notifications
        NotificationCenter.default.publisher(for: .NSPersistentStoreRemoteChange)
            .sink { [weak self] _ in
                self?.checkAndLoadDataIfNeeded()
            }
            .store(in: &cancellables)
    }

    private func checkAndLoadDataIfNeeded() {
        // Check again if data exists in the store
        let fetchRequest: NSFetchRequest<StudyCard> = StudyCard.fetchRequest()
        fetchRequest.fetchLimit = 1

        do {
            let count = try container.viewContext.count(for: fetchRequest)
            if count > 0 {
                // Data has synced from iCloud
                print("Data synced from iCloud, skipping JSON load.")

                // Cancel any further notifications to prevent multiple calls
                DispatchQueue.main.async {
                    self.cancellables.forEach { $0.cancel() }
                    self.cancellables.removeAll()
                }
            } else {
                if self.dataExistsInCloudKit {
                    // Data exists in CloudKit but hasn't synced yet
                    print("Data exists in CloudKit but hasn't synced yet. Waiting...")
                    // Do nothing, just wait for the next notification
                } else {
                    // No data exists, load from JSON
                    print("No data found, loading from JSON.")
                    self.loadFlashcardsFromJSON()

                    // Cancel any further notifications to prevent multiple calls
                    DispatchQueue.main.async {
                        self.cancellables.forEach { $0.cancel() }
                        self.cancellables.removeAll()
                    }
                }
            }
        } catch {
            print("Failed to count StudyCards: \(error)")
        }
    }

    func loadFlashcardsFromJSON() {
        guard let url = Bundle.main.url(forResource: "flashcards", withExtension: "json"),
              let data = try? Data(contentsOf: url) else {
            print("Failed to load flashcards.json from bundle.")
            return
        }

        do {
            let decoder = JSONDecoder()
            let dateFormatter = DateFormatter()
            dateFormatter.dateFormat = "yyyy-MM-dd"

            let flashcards = try decoder.decode([FlashcardJSON].self, from: data)
            
            for flashcard in flashcards {
                let fetchRequest: NSFetchRequest<StudyCard> = StudyCard.fetchRequest()
                fetchRequest.predicate = NSPredicate(format: "id == %@", flashcard.id)
                fetchRequest.fetchLimit = 1

                let existingCards = try container.viewContext.fetch(fetchRequest)

                if let existingCard = existingCards.first {
                    // Update existing card
                    existingCard.question = flashcard.question
                    existingCard.answer = flashcard.answer
                    existingCard.region = flashcard.region
                    existingCard.boxNumber = Int16(flashcard.boxNumber)
                    existingCard.nextReviewDate = dateFormatter.date(from: flashcard.nextReviewDate)
                } else {
                    // Insert new card
                    let newStudyCard = StudyCard(context: container.viewContext)
                    newStudyCard.id = flashcard.id
                    newStudyCard.question = flashcard.question
                    newStudyCard.answer = flashcard.answer
                    newStudyCard.region = flashcard.region
                    newStudyCard.boxNumber = Int16(flashcard.boxNumber)
                    newStudyCard.nextReviewDate = dateFormatter.date(from: flashcard.nextReviewDate)
                }
            }

            try container.viewContext.save()
            print("Flashcards loaded from JSON and saved to Core Data.")
        } catch {
            print("Failed to decode flashcards from JSON: \(error.localizedDescription)")
        }
    }

    // Function to review flashcards (same as your existing implementation)
    static func reviewFlashcard(flashcard: StudyCard, knewAnswer: Bool, context: NSManagedObjectContext) {
        if knewAnswer {
            // Move the flashcard to the next box, up to a maximum of 5
            flashcard.boxNumber = min(flashcard.boxNumber + 1, 5)
        } else {
            // If the answer was incorrect, move the flashcard back to Box 1
            flashcard.boxNumber = 1
        }

        // Update the next review date based on the new box number
        let reviewInterval = [10, 15, 20, 25, 30] // Example intervals for each box (in days)
        let boxIndex = Int(flashcard.boxNumber) - 1 // Adjust for 0-based indexing
        let interval = reviewInterval[boxIndex]

        let newReviewDate = Calendar.current.date(byAdding: .second, value: interval, to: Date())
        print("Updating flashcard ID \(flashcard.id ?? "unknown") to box \(flashcard.boxNumber) with next review date \(newReviewDate!)")
        flashcard.nextReviewDate = newReviewDate

        // Save the changes
        do {
            try context.save()
            print("Flashcard \(flashcard.id ?? "unknown") saved successfully.")
        } catch {
            print("Failed to save flashcard \(flashcard.id ?? "unknown"): \(error)")
        }
    }
}


