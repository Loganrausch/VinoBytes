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
                ForEach(openAIManager.messages) { message in
                    MessageView(message: message)
                }
            }
            .navigationBarTitle("Conversation", displayMode: .inline)
        }
        .onAppear {
            openAIManager.loadMessages(from: conversation)
        }
    }
}

struct ReadOnlyConversationView_Previews: PreviewProvider {
    static var previews: some View {
        ReadOnlyConversationView(conversation: Conversation(), openAIManager: OpenAIManager(context: PersistenceController.shared.container.viewContext))
    }
}
