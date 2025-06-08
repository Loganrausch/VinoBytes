//
//  FlashcardIDUpdater.swift
//  VinoBytes
//
//  Created by Logan Rausch on 8/10/24.
//

import Foundation

struct Flashcard: Codable, Identifiable {
    let id: String
    let region: String
    let question: String
    let answer: String
}
