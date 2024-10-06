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
