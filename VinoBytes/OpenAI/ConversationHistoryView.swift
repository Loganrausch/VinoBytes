//
//  ConversationHistoryView.swift
//  VinoBytes
//
//  Created by Logan Rausch on 6/12/24.
//

import SwiftUI

struct ConversationView: View {
    var conversation: Conversation

    private var displayText: String {
        if let startTime = conversation.startTime {
            let formatter = DateFormatter()
            formatter.dateStyle = .long
            formatter.timeStyle = .short
            return "Conversation started on \(formatter.string(from: startTime))"
        } else {
            return "Date unavailable"
        }
    }

    var body: some View {
        Text(displayText)
    }
}

struct ConversationHistoryView: View {
    @ObservedObject var openAIManager: OpenAIManager
    @State private var selectedConversation: Conversation?
    @State private var showReadOnlyConversation = false
    
    var body: some View {
        NavigationView {
            List {
                ForEach(openAIManager.conversations) { conversation in
                    Button(action: {
                        self.selectedConversation = conversation
                        openAIManager.loadMessages(from: conversation)
                        showReadOnlyConversation.toggle()
                    }) {
                        ConversationView(conversation: conversation)
                    }
                }
                .onDelete(perform: deleteConversation)
            }
            .navigationBarTitle("Conversation History", displayMode: .inline)
            .sheet(isPresented: $showReadOnlyConversation) {
                if let selectedConversation = selectedConversation {
                    ReadOnlyConversationView(conversation: selectedConversation, openAIManager: openAIManager)
                }
            }
        }
        .preferredColorScheme(.light) // Apply light mode to the entire view
    }
    
    private func deleteConversation(at offsets: IndexSet) {
        openAIManager.deleteConversation(at: offsets)
    }
}

struct ConversationHistoryView_Previews: PreviewProvider {
    static var previews: some View {
        ConversationHistoryView(openAIManager: OpenAIManager(context: PersistenceController.shared.container.viewContext))
    }
}
