//
//  ConversationHistoryView.swift
//  VinoBytes
//
//  Created by Logan Rausch on 6/12/24.
//

import SwiftUI

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
