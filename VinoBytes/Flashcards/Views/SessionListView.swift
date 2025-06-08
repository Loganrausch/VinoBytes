//
//  SessionListView.swift
//  VinoBytes
//
//  Created by Logan Rausch on 10/7/24.
//

// Simple read‑only view.
// If we add filtering or edits, extract a SessionListViewModel. – 2025‑05‑09

import Foundation
import SwiftUI

struct SessionListView: View {
    @EnvironmentObject var sessionManager: StudySessionManager
    @State private var sessions: [StudySession] = []

    var body: some View {
        List {
            if sessions.isEmpty {
                Text("Completed sessions appear here.")
                    .foregroundColor(.gray)
                    .italic()
                    .frame(maxWidth: .infinity, maxHeight: .infinity, alignment: .center)
            } else {
                ForEach(sessions, id: \.id) { session in
                    NavigationLink(destination: SessionDetailView(session: session)) {
                        HStack {
                            VStack(alignment: .leading) {
                                Text("Session on \(session.dateFormatted)")
                                    .font(.headline)
                                Text("Score: \(session.correctAnswers)/\(session.totalQuestions)")
                                    .font(.subheadline)
                                    .foregroundColor(.gray)
                            }
                            Spacer()
                        }
                        .padding(.vertical, 8)
                    }
                }
                .onDelete(perform: deleteSessions)
            }
        }
        .navigationTitle("History")
        .onAppear {
            sessions = sessionManager.fetchPastSessions()
        }
    }
    
    // Small function - not worth pulling out into vm at this time unless complexity grows.
    private func deleteSessions(at offsets: IndexSet) {
            for index in offsets {
                let sessionToDelete = sessions[index]
                sessionManager.deleteSession(sessionToDelete)
            }
            sessions.remove(atOffsets: offsets)
        }
    }
