//
//  Persistence.swift
//  VinoDecks
//
//  Created by Logan Rausch on 3/1/24.
//

import CoreData

struct PersistenceController {
    static let shared = PersistenceController()
    
    let container: NSPersistentContainer
    
    init(inMemory: Bool = false) {
        container = NSPersistentContainer(name: "StudyCardModel")
        if inMemory {
            container.persistentStoreDescriptions.first!.url = URL(fileURLWithPath: "/dev/null")
        }
        container.loadPersistentStores(completionHandler: { (storeDescription, error) in
            if let error = error as NSError? {
                fatalError("Unresolved error \(error), \(error.userInfo)")
            }
        })
        container.viewContext.automaticallyMergesChangesFromParent = true
        
        // Load flashcards from JSON
        loadFlashcardsFromJSON()
    }
    
    
    func loadFlashcardsFromJSON() {
        guard let url = Bundle.main.url(forResource: "flashcards", withExtension: "json"),
              let data = try? Data(contentsOf: url) else {
            fatalError("Failed to load flashcards.json from bundle.")
        }
        
        do {
            let decoder = JSONDecoder()
            let dateFormatter = DateFormatter()
            dateFormatter.dateFormat = "yyyy-MM-dd"

            let flashcards = try decoder.decode([FlashcardJSON].self, from: data)
            let flashcardIDs = flashcards.map { $0.id }
            
            let fetchRequest: NSFetchRequest<StudyCard> = StudyCard.fetchRequest()
            
            // Fetch all existing flashcards
            let existingFlashcards = try container.viewContext.fetch(fetchRequest)
            
            // Delete flashcards that are no longer in the JSON file
            for existingFlashcard in existingFlashcards {
                if !flashcardIDs.contains(existingFlashcard.id ?? "") {
                    container.viewContext.delete(existingFlashcard)
                }
            }
            
            // Update existing flashcards and create new ones
            for flashcard in flashcards {
             
                let fetchRequest: NSFetchRequest<StudyCard> = StudyCard.fetchRequest()
                fetchRequest.predicate = NSPredicate(format: "id == %@", flashcard.id)
                
                let existingFlashcard = try container.viewContext.fetch(fetchRequest).first
                
                if let existingFlashcard = existingFlashcard {
                    // Update existing flashcard
                    existingFlashcard.question = flashcard.question
                    existingFlashcard.answer = flashcard.answer
                    existingFlashcard.region = flashcard.region
                    existingFlashcard.boxNumber = Int16(flashcard.boxNumber) // Update boxNumber
                    existingFlashcard.nextReviewDate = dateFormatter.date(from: flashcard.nextReviewDate) // Update nextReviewDate
                } else {
                    // Create new flashcard
                    let newStudyCard = StudyCard(context: container.viewContext)
                    newStudyCard.id = flashcard.id
                    newStudyCard.question = flashcard.question
                    newStudyCard.answer = flashcard.answer
                    newStudyCard.region = flashcard.region
                    newStudyCard.boxNumber = Int16(flashcard.boxNumber) // Set boxNumber
                    newStudyCard.nextReviewDate = dateFormatter.date(from: flashcard.nextReviewDate) // Set nextReviewDate
                }
                
            }
            
            try container.viewContext.save()
        } catch {
            fatalError("Failed to load flashcards from JSON: \(error)")
        }
    }
    
    
    
    static func reviewFlashcard(flashcard: StudyCard, knewAnswer: Bool, context: NSManagedObjectContext) {
        if knewAnswer {
            // Move the flashcard to the next box, up to a maximum of 5
            flashcard.boxNumber = min(flashcard.boxNumber + 1, 5)
        } else {
            // If the answer was incorrect, move the flashcard back to Box 1
            flashcard.boxNumber = 1
        }

        // Update the next review date based on the new box number
        let reviewInterval = [1, 3, 7, 14, 28] // Example intervals for each box (in days)
        let boxIndex = Int(flashcard.boxNumber) - 1 // Adjust for 0-based indexing
        let interval = reviewInterval[boxIndex]
        flashcard.nextReviewDate = Calendar.current.date(byAdding: .day, value: interval, to: Date())

        // Save the changes
        try? context.save()
    }
}

struct FlashcardJSON: Codable {
    let question: String
    let answer: String
    let region: String
    let id: String
    let boxNumber: Int // Add this line
    let nextReviewDate: String // Add this line
}


struct QuizQuestionJSON: Codable {
    let questionText: String
    let answerOptions: [String]
    let correctAnswer: String
    let region: String
}
