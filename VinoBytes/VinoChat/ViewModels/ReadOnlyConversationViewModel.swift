//
//  Untitled.swift
//  VinoBytes
//
//  Created by Logan Rausch on 5/7/25.
//

import SwiftUI

// MARK: – ViewModel
@MainActor
final class ReadOnlyConversationViewModel: ObservableObject {
    @Published var messages: [ChatMessage] = []

    private let conversation: Conversation
    private let openAI: OpenAIManager

    init(conversation: Conversation, openAI: OpenAIManager) {
        self.conversation = conversation
        self.openAI      = openAI
    }

    func onAppear() {
        openAI.loadMessages(from: conversation)
        messages = openAI.messages
    }

    func onDisappear() {
        openAI.clearTemporaryData()
    }
}
