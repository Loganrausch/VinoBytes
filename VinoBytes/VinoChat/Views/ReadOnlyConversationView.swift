//
//  ReadOnlyConversationView.swift
//  VinoBytes
//
//  Created by Logan Rausch on 6/12/24.
//

import SwiftUI

struct ReadOnlyConversationView: View {
    @StateObject private var viewModel: ReadOnlyConversationViewModel

    init(conversation: Conversation, openAI: OpenAIManager) {
        _viewModel = StateObject(wrappedValue: ReadOnlyConversationViewModel(
            conversation: conversation,
            openAI: openAI
        ))
    }

    var body: some View {
        NavigationView {
            ScrollView {
                VStack(spacing: 20) {
                    ForEach(viewModel.messages) { message in
                        MessageView(message: message)
                    }
                }
                .padding(.top, 20)
            }
            .navigationTitle("Conversation")
            .navigationBarTitleDisplayMode(.inline)
            .preferredColorScheme(.light)
        }
        .onAppear { viewModel.onAppear() }
        .onDisappear { viewModel.onDisappear() }
    }
}
