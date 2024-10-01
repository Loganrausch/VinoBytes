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
    
    // Preview instance with sample data
    static var preview: PersistenceController = {
        let controller = PersistenceController(inMemory: true)
        let context = controller.container.viewContext
        
        // Add sample data
        for index in 0..<5 {
            let flashcard = StudyCard(context: context)
            flashcard.question = "Sample Question \(index + 1)"
            flashcard.answer = "Sample Answer \(index + 1)"
            flashcard.region = "Sample Region"
            flashcard.boxNumber = 0  // Start in Box 0
            flashcard.nextReviewDate = Date()
        }
        
        return controller
    }()
    
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
        
        // Replace 'recordFetchedBlock' with 'recordMatchedBlock'
        queryOperation.recordMatchedBlock = { recordID, result in
            switch result {
            case .success(_):
                foundRecords = true
            case .failure(let error):
                // Handle individual record errors if necessary
                print("Error fetching record with ID \(recordID): \(error.localizedDescription)")
            }
        }
        
        // Replace 'queryCompletionBlock' with 'queryResultBlock'
        queryOperation.queryResultBlock = { result in
            switch result {
            case .success(_):
                completion(foundRecords)
            case .failure(let error):
                if let ckError = error as? CKError {
                    switch ckError.code {
                    case .unknownItem:
                        // Record type doesn't exist yet; treat as no data in CloudKit
                        print("Record type CD_StudyCard does not exist in CloudKit.")
                        completion(false)
                    case .partialFailure:
                        // Handle partial failures, which may contain more detailed errors
                        if let errors = ckError.userInfo[CKPartialErrorsByItemIDKey] as? [AnyHashable: Error] {
                            for (_, error) in errors {
                                print("Partial error: \(error.localizedDescription)")
                            }
                        }
                        completion(false)
                    default:
                        print("Error querying CloudKit: \(ckError.localizedDescription)")
                        completion(false)
                    }
                } else {
                    print("Non-CKError encountered: \(error.localizedDescription)")
                    completion(false)
                }
            }
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
                    
                } else {
                    // Insert new card
                    let newStudyCard = StudyCard(context: container.viewContext)
                    newStudyCard.id = flashcard.id
                    newStudyCard.question = flashcard.question
                    newStudyCard.answer = flashcard.answer
                    newStudyCard.region = flashcard.region
                    newStudyCard.boxNumber = 0  // Start new cards in Box 0
                    newStudyCard.nextReviewDate = Date()  // Set to today
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
                if flashcard.boxNumber == 0 {
                    // Move from Box 0 to Box 1
                    flashcard.boxNumber = 1
                } else {
                    // Move the flashcard to the next box, up to a maximum of 5
                    flashcard.boxNumber = min(flashcard.boxNumber + 1, 5)
                }
            } else {
                // Reset the flashcard back to Box 1
                flashcard.boxNumber = 0
            }
        
        // Updated review intervals for boxes 0 to 5
           let reviewInterval = [0, 5, 5, 5, 5, 5] // Intervals for boxes 0 to 5
           let boxIndex = Int(flashcard.boxNumber) // No need to subtract 1
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


