//
//  ConversationHistoryView.swift
//  VinoBytes
//
//  Created by Logan Rausch on 6/12/24.
//

import SwiftUI

struct ConversationHistoryView: View {
    @EnvironmentObject var openAIManager: OpenAIManager
    @StateObject private var vm = ConversationHistoryViewModel()

    var body: some View {
        NavigationStack {
            List {
                if vm.conversations.isEmpty {
                    Text("Saved Conversations Appear Here")
                        .foregroundColor(.gray)
                } else {
                    ForEach(vm.conversations) { convo in
                        Button { vm.select(convo) } label: {
                            ConversationView(conversation: convo)
                        }
                    }
                    .onDelete(perform: vm.delete)
                }
            }
            .listStyle(.plain)

            // ── Navigation bar
            .navigationTitle("Conversation History")
            .navigationBarTitleDisplayMode(.inline)

            // ── Toolbar
            .toolbar {
                ToolbarItem(placement: .navigationBarTrailing) {
                    EditButton()
                        .tint(Color("Latte"))          // custom color
                }
            }

            // ── Data wiring
            .task {
                vm.configure(with: openAIManager)
                openAIManager.loadAllConversations()
            }

            // ── Sheet
            .sheet(item: $vm.selectedConversation) { convo in
                ReadOnlyConversationView(conversation: convo,
                                         openAI: openAIManager)
            }
        }
        // forcing light mode - will implement dark mode at later date
        .preferredColorScheme(.light)
    }
}
