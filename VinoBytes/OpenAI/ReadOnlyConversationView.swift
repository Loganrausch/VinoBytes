//
//  ReadOnlyConversationView.swift
//  VinoBytes
//
//  Created by Logan Rausch on 6/12/24.
//

import SwiftUI

struct ReadOnlyConversationView: View {
    var conversation: Conversation
    @ObservedObject var openAIManager: OpenAIManager
    
    var body: some View {
        NavigationView {
            ScrollView {
                VStack(spacing: 20) {  // Add spacing between messages if needed
                    ForEach(openAIManager.messages) { message in
                        MessageView(message: message)
                    }
                }
                .padding(.top, 20)  // Add padding at the top of the ScrollView
            }
            .navigationBarTitle("Conversation", displayMode: .inline)
            .preferredColorScheme(.light) // Apply light mode to the entire view
        }
        .onAppear {
            openAIManager.loadMessages(from: conversation)
        }
        
        .onDisappear {
                    // Call a function to clear any temporary data or reset states
                    openAIManager.clearTemporaryData()
                }
    }
}

struct ReadOnlyConversationView_Previews: PreviewProvider {
    static var previews: some View {
        ReadOnlyConversationView(conversation: Conversation(), openAIManager: OpenAIManager(context: PersistenceController.shared.container.viewContext))
    }
}
