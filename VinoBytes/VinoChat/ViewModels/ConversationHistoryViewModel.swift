//
//  ConversationHistoryViewModel.swift
//  VinoBytes
//
//  Created by Logan Rausch on 5/8/25.
//

import Foundation
import Combine

@MainActor
final class ConversationHistoryViewModel: ObservableObject {
    @Published private(set) var conversations: [Conversation] = []
    @Published var selectedConversation: Conversation?

    private var cancellables = Set<AnyCancellable>()
    private var openAI: OpenAIManager?

    func configure(with manager: OpenAIManager) {
        guard openAI == nil else { return }          // only once
        openAI = manager
        manager.$conversations
            .receive(on: RunLoop.main)
            .assign(to: &$conversations)
    }

    func delete(_ offsets: IndexSet) {
        guard let manager = openAI else { return }
        offsets.map { conversations[$0] }.forEach(manager.deleteConversation)
    }

    func select(_ convo: Conversation) {
        selectedConversation = convo
        openAI?.loadMessages(from: convo)
    }
}
