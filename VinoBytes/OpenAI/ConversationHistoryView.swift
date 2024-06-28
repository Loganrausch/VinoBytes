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
        Text(conversation.firstMessageContent ?? "No initial message")
            .foregroundColor(Color("Maroon"))  // Change text color to Maroon
            .padding(.vertical, 4)  // Adjust padding for better spacing
            .frame(maxWidth: .infinity, minHeight: 20, alignment: .leading)  // Ensures a minimum height but adapts if content needs more space
            .background(Color.latte)  // Background color for each row
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
                    .listRowBackground(Color("Latte"))  // Apply the Latte color to each row
                }
                .onDelete(perform: deleteConversation)
            }
            .listStyle(PlainListStyle())  // Use PlainListStyle to ensure full background color application
            .background(Color("Latte"))  // Background color for the whole list
            .navigationBarTitle("Conversation History", displayMode: .inline)
            .sheet(isPresented: $showReadOnlyConversation) {
                if let convo = selectedConversation {
                    ReadOnlyConversationView(conversation: convo, openAIManager: openAIManager)
                }
            }
        }
        .background(Color("Latte").edgesIgnoringSafeArea(.all))  // Apply background color to the navigation view
    }
    
    private func deleteConversation(at offsets: IndexSet) {
        openAIManager.deleteConversation(at: offsets)
    }
}

// Preview provider for SwiftUI previews in Xcode.
struct ConversationHistoryView_Previews: PreviewProvider {
    static var previews: some View {
        ConversationHistoryView(openAIManager: OpenAIManager(context: PersistenceController.shared.container.viewContext))
    }
}
