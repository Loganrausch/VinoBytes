//
//  FlashcardIDUpdater.swift
//  VinoBytes
//
//  Created by Logan Rausch on 8/10/24.
//

import Foundation

struct FlashcardJSON: Codable {
    var question: String
    var answer: String
    var region: String
    var id: String
    var boxNumber: Int
    var nextReviewDate: String
}
