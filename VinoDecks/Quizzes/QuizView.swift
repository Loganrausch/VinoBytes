//
//  QuizView.swift
//  VinoDecks
//
//  Created by Logan Rausch on 3/12/24.
//

import Foundation

import SwiftUI

struct QuizView: View {
    @State private var currentQuestionIndex = 0
    @State private var score = 0
    let questions: [QuizQuestion]

    var body: some View {
        VStack {
            if currentQuestionIndex < questions.count {
                QuizQuestionView(question: questions[currentQuestionIndex]) { isCorrect in
                    if isCorrect {
                        score += 1
                    }
                    currentQuestionIndex += 1
                }
            } else {
                Text("Your score: \(score)/\(questions.count)")
            }
        }
        .navigationBarTitle("Quiz", displayMode: .inline)
    }
}
