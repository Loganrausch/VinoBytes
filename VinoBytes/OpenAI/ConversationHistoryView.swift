//
//  ConversationHistoryView.swift
//  VinoBytes
//
//  Created by Logan Rausch on 6/12/24.
//

import SwiftUI

struct ConversationView: View {
    var conversation: Conversation

    var body: some View {
        Text(conversation.title ?? "No initial message")
            .foregroundColor(Color("Maroon"))  // Change text color to Maroon
            .padding(.vertical, 4)  // Adjust padding for better spacing
            .frame(maxWidth: .infinity, minHeight: 20, alignment: .leading)  // Ensures a minimum height but adapts if content needs more space
    }
}

struct ConversationHistoryView: View {
    @ObservedObject var openAIManager: OpenAIManager
    @State private var selectedConversation: Conversation?
    @State private var showReadOnlyConversation: Bool = false
    
    var body: some View {
        NavigationView {
            List {
                ForEach(openAIManager.conversations, id: \.self) { conversation in
                    Button(action: {
                        self.selectedConversation = conversation
                        self.showReadOnlyConversation = true
                        openAIManager.loadMessages(from: conversation)
                    }) {
                        ConversationView(conversation: conversation)
                    }
                }
                .onDelete(perform: deleteConversations)
            }
            .listStyle(PlainListStyle())
            .navigationBarTitle("Conversation History", displayMode: .inline)
            .sheet(isPresented: $showReadOnlyConversation) {
                if let convo = selectedConversation {
                    ReadOnlyConversationView(conversation: convo, openAIManager: openAIManager)
                }
            }
        }
    }
    
    private func deleteConversations(at offsets: IndexSet) {
        offsets.forEach { index in
            let conversation = openAIManager.conversations[index]
            openAIManager.deleteConversation(conversation)
        }
    }
}

// Preview provider for SwiftUI previews in Xcode.
struct ConversationHistoryView_Previews: PreviewProvider {
    static var previews: some View {
        ConversationHistoryView(openAIManager: OpenAIManager(context: PersistenceController.shared.container.viewContext))
    }
}
