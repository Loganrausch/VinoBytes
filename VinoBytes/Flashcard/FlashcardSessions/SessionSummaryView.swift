//
//  SessionSummaryView.swift
//  VinoBytes
//
//  Created by Logan Rausch on 10/7/24.
//

import Foundation
import SwiftUI

struct SessionSummaryView: View {
    var session: StudySession
    @Environment(\.dismiss) var dismiss
    @State private var navigateToSessionDetail = false

    var body: some View {
        VStack(spacing: 20) {
            // Header Section
            Text("Session Summary")
                .font(.title2)
                .fontWeight(.bold)
                .padding(.top, 30)

            // Card View
            VStack(spacing: 15) {
                SummaryCardView(title: "Date", value: session.dateFormatted)
                SummaryCardView(title: "Total Cards Reviewed", value: "\(session.totalQuestions)")
                SummaryCardView(title: "Cards Marked as Known", value: "\(session.correctAnswers)")
                
                HStack {
                    Text("Score: ")
                        .font(.headline)
                    ProgressView(value: Double(session.scorePercentage), total: 100)
                        .progressViewStyle(LinearProgressViewStyle(tint: Color.lightMaroon))
                        .frame(width: 150)
                    Text("\(session.scorePercentage)%")
                        .font(.headline)
                        .bold()
                        .foregroundColor(.lightMaroon)
                }
                .padding()
            }
            .background(RoundedRectangle(cornerRadius: 20).fill(Color.clear))
            .padding()

            // Action Buttons
            Button(action: {
                navigateToSessionDetail = true
            }) {
                Text("View Details")
                    .bold()
                    .padding()
                    .frame(maxWidth: .infinity)
                    .background(Color.lightMaroon)
                    .foregroundColor(.latte)
                    .cornerRadius(10)
                    .shadow(radius: 5)
            }
            .padding(.horizontal)

            Spacer()
        }
        .padding()
        .navigationDestination(isPresented: $navigateToSessionDetail) {
            SessionDetailView(session: session)
        }
        .toolbar {
            ToolbarItem(placement: .navigationBarTrailing) {
                Button("Done") {
                    dismiss()
                }
            }
        }
    }
}

// Custom Card View for Summary Info
struct SummaryCardView: View {
    var title: String
    var value: String

    var body: some View {
        HStack {
            Text(title)
                .font(.headline)
                .foregroundColor(.black)
            Spacer()
            Text(value)
                .font(.body)
                
        }
        .padding()
        .background(RoundedRectangle(cornerRadius: 10).fill(Color.lightLatte))
        .shadow(radius: 3)
    }
}


extension StudySession {
    var dateFormatted: String {
        let formatter = DateFormatter()
        formatter.dateStyle = .medium
        formatter.timeStyle = .short
        return formatter.string(from: self.date ?? Date())
    }

    var scorePercentage: Int {
        guard totalQuestions > 0 else { return 0 }
        return Int((Double(correctAnswers) / Double(totalQuestions)) * 100)
    }
}



