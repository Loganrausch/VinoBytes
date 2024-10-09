//
//  SessionDetailView.swift
//  VinoBytes
//
//  Created by Logan Rausch on 10/7/24.
//

import Foundation
import SwiftUI

struct SessionDetailView: View {
    var session: StudySession
    @Environment(\.dismiss) var dismiss  // Step 1: Import the dismiss environment variable

    var body: some View {
        List {
            Section(header: Text("Summary")) {
                VStack(alignment: .leading, spacing: 8) {
                    Text("Date: \(session.dateFormatted)")
                    Text("Total Questions: \(session.totalQuestions)")
                    Text("Correct Answers: \(session.correctAnswers)")
                    Text("Score: \(session.scorePercentage)%")
                }
                .font(.body)
            }
            
            Section(header: Text("Results")) {
                ForEach(session.sortedFlashcardResults, id: \.objectID) { result in
                    VStack(alignment: .leading, spacing: 4) {
                        HStack {
                            Text(result.question ?? "")
                                .font(.headline)
                            Spacer()
                            Image(systemName: result.wasCorrect ? "checkmark.circle.fill" : "xmark.circle.fill")
                                .foregroundColor(result.wasCorrect ? .green : .orange)
                        }
                        Text("Answer: \(result.answer ?? "")")
                            .font(.subheadline)
                            .foregroundColor(.black.opacity(0.8))
                        Text("Region: \(result.region ?? "")")
                            .font(.footnote)
                            .foregroundColor(.gray)
                    }
                    .padding(.vertical, 6)
                }
            }
        }
        .navigationTitle("Details")
        .toolbar {  // Step 2: Add a toolbar modifier
            ToolbarItem(placement: .navigationBarTrailing) {
                Button("Done") {
                    dismiss()  // Step 3: Call the dismiss action
                        }
                    }
                }
            }
        }

        extension StudySession {
            var sortedFlashcardResults: [FlashcardResult] {
                let set = flashcardResults as? Set<FlashcardResult> ?? []
                return set.sorted { ($0.question ?? "") < ($1.question ?? "") }
            }
        }
