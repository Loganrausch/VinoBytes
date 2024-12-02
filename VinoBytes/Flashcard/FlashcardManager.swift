//
//  FlashcardManager.swift
//  VinoBytes
//
//  Created by Logan Rausch on 10/4/24.
//

import Foundation


class FlashcardManager: ObservableObject {
    static let shared = FlashcardManager()
    
    @Published var flashcards: [Flashcard] = []
    
    private init() {
        print("FlashcardManager initialized")
                loadFlashcards()
            }
    
    // Load flashcards from JSON file
    func loadFlashcards() {
        guard let url = Bundle.main.url(forResource: "flashcards", withExtension: "json") else {
            print("Flashcards JSON file not found.")
            flashcards = [] // Set to empty if not found
            return
        }
        
        do {
            let data = try Data(contentsOf: url)
            let decoder = JSONDecoder()
            flashcards = try decoder.decode([Flashcard].self, from: data)
            print("Successfully loaded \(flashcards.count) flashcards.")
            
            // Check for duplicate IDs and list them
            let ids = flashcards.map { $0.id }
            var idCounts: [String: Int] = [:]
            
            // Count occurrences of each ID
            for id in ids {
                idCounts[id, default: 0] += 1
            }
            
            // Filter IDs that occur more than once
            let duplicateIDs = idCounts.filter { $0.value > 1 }.map { $0.key }
            
            if !duplicateIDs.isEmpty {
                            print("Warning: Duplicate IDs found: \(duplicateIDs)")
                            // Handle duplicates as needed
                        } else {
                            print("No duplicate IDs found.")
                        }
            
        } catch {
            print("Error decoding flashcards JSON: \(error)")
            flashcards = [] // Set to empty on error
        }
    }
    
    // Function to reload flashcards (e.g., called when JSON file changes)
       func reloadFlashcards() {
           loadFlashcards() // Reloads the flashcards from the JSON file
       }
    
    // Filter flashcards based on selected regions
    func getFlashcards(for selectedRegions: Set<String>) -> [Flashcard] {
        if selectedRegions.isEmpty {
            return flashcards
        } else {
            return flashcards.filter { selectedRegions.contains($0.region) }
        }
    }
}
