//
//  QuizQuestionView.swift
//  VinoDecks
//
//  Created by Logan Rausch on 3/12/24.
//

import Foundation
import SwiftUI

struct QuizQuestionView: View {
    @State private var selectedAnswer: String?
    @State private var showAnswer = false
    let question: QuizQuestion
    let onAnswerSelected: (Bool) -> Void

    var body: some View {
        VStack {
            Text(question.questionText ?? "Unknown question")
                .font(.title)
                .padding()

            ForEach(question.answerOptions as? [String] ?? [], id: \.self) { answer in
                Button(action: {
                    self.selectedAnswer = answer
                    self.showAnswer = true
                    DispatchQueue.main.asyncAfter(deadline: .now() + 1) {
                        self.onAnswerSelected(answer == (question.correctAnswer ?? ""))
                        self.showAnswer = false
                    }
                }) {
                    Text(answer)
                        .padding()
                        .frame(maxWidth: .infinity)
                        .background(answerBackgroundColor(answer)) // Use answerBackgroundColor function for the background
                        .foregroundColor(.black) // Text color remains black
                        .overlay(
                            RoundedRectangle(cornerRadius: 10)
                                .stroke(Color.black, lineWidth: 2) // Keep the black border
                        )
                        .cornerRadius(10)
                        .padding(.horizontal)
                }
                .disabled(showAnswer)
            }
        }
        .background(Color.white) // Set the background color of the entire view to white
        .padding()
    }

    private func answerBackgroundColor(_ answer: String) -> Color {
        if !showAnswer {
            return Color(red: 0.95, green: 0.95, blue: 0.95) // Very light grey
        } else if answer == question.correctAnswer {
            return Color.green // Background color for the correct answer is green
        } else if answer == selectedAnswer {
            return Color.red // Background color for the selected wrong answer is red
        } else {
            return Color(red: 0.95, green: 0.95, blue: 0.95) // Very light grey
        }
    }
}
