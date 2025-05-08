//
//  ChatViewModel.swift
//  VinoBytes
//
//  Created by Logan Rausch on 5/7/25.
//

import Foundation
import RevenueCat
import Combine

@MainActor
final class ChatViewModel: ObservableObject {
    
    @Published var isPaywallPresented = false  // Controls the presentation of the paywall
    @Published var selectedConversation: Conversation?
    @Published var inputText: String = ""
    @Published var isLoading: Bool = false
    
    /// Mirror of the manager’s messages
    @Published var messages: [ChatMessage] = []
    
    private let openAIManager: OpenAIManager
    private var cancellables = Set<AnyCancellable>()   // ← new
    
    init(openAIManager: OpenAIManager) {
        self.openAIManager = openAIManager
        
        // subscribe once and for all to the messages
        openAIManager.$messages
            .receive(on: RunLoop.main)
            .assign(to: \.messages, on: self)   // returns AnyCancellable ✅
            .store(in: &cancellables)           // now compiles
    }

    
    func incrementChatEndCounterAndMaybeRequestReview() {
        let defaults = UserDefaults.standard
        let chatEndCountKey = "chatEndCount"
        
        let newCount = defaults.integer(forKey: chatEndCountKey) + 1
        defaults.setValue(newCount, forKey: chatEndCountKey)
        
        // Define your milestones
        let milestones = [5, 20, 50, 100]
        
        if milestones.contains(newCount) {
            ReviewRequestHelper.requestReviewIfAppropriate()
        }
    }
    
    // Helper Functions
    func startSubscriptionProcess() {
        Purchases.shared.getOfferings { offerings, error in
            if let offerings = offerings, let offering = offerings.current {
                if offering.availablePackages.isEmpty {
                    print("No packages available")
                } else {
                    self.isPaywallPresented = true  // Trigger the paywall presentation
                }
            } else if let error = error {
                print("Error fetching offerings: \(error.localizedDescription)")
            }
        }
    }
    
    /// Ensures there is a conversation, then returns it
     func ensureConversation() -> Conversation {
       if let convo = selectedConversation {
         return convo
       } else {
         let newConvo = openAIManager.startNewConversation()
         selectedConversation = newConvo
         return newConvo
       }
     }

    /// Ends (and optionally saves) the current convo, then clears everything.
    func endConversation(save: Bool) {
      guard let convo = selectedConversation else { return }

      if save {
        // 1️⃣ Tell the manager to close/save the convo
        openAIManager.endConversation(convo)

        // 2️⃣ Bump your end-chat counter and maybe request a review
        incrementChatEndCounterAndMaybeRequestReview()
      }

      // 3️⃣ Clear the convo state
      selectedConversation = nil

      // 4️⃣ Wipe out the in-memory buffer
      openAIManager.messages.removeAll()   // vm.messages follows suit

      // 5️⃣ Reset the draft text field
      inputText = ""
    }
}

extension ChatViewModel {
  /// Sends whatever is in `inputText`, resets it, manages loading, and tells the view to scroll.
  func sendMessage(onScroll: @escaping (UUID) -> Void) {
    // 1️⃣ Grab & trim the typed text
    let text = inputText.trimmingCharacters(in: .whitespaces)
    guard !text.isEmpty else { return }

    // 2️⃣ Clear the field and enter loading state
    inputText = ""
    isLoading = true

    // 3️⃣ Ensure we have a conversation
    let convo = ensureConversation()

    // 4️⃣ Fire off the message
    openAIManager.sendMessage(text, in: convo) { [weak self] error in
      DispatchQueue.main.async {
        guard let self = self else { return }
        // 5️⃣ Exit loading
        self.isLoading = false

        if let error = error {
          print("Error sending message:", error)
        } else if let last = self.openAIManager.messages.last(where: { $0.role == "user" }),
                  let id = last.id {
            // only call onScroll if we actually have a UUID
            onScroll(id)
        
        }
      }
    }
  }
}
