//
//  OpenAIManager.swift
//  VinoBytes
//
//  Created by Logan Rausch on 6/11/24.
//

import Foundation
import CoreData

class OpenAIManager: ObservableObject {
    @Published var conversations: [Conversation] = []
    @Published var messages: [ChatMessage] = []  // Add messages to track conversation messages
    private let context: NSManagedObjectContext
    
    // System message to set context for the assistant
    private let systemMessage = ["role": "system", "content": "You are a wine expert assistant. Answer all questions with a focus on wine and wine education. Provide detailed information about wine regions, grape varieties, wine tasting notes, and wine production methods."]
    
    init(context: NSManagedObjectContext) {
        self.context = context
        loadAllConversations()
    }

    func sendMessage(_ text: String, in conversation: Conversation, completion: @escaping (String?) -> Void) {
        let userMessage = saveMessage(text, role: "user", in: conversation)
        // Add the message to the messages array immediately after saving it
        DispatchQueue.main.async {
            self.messages.append(userMessage)
            self.loadMessages(from: conversation)  // This might be redundant if messages are managed properly
        }

        requestResponse(for: text) { responseText in
            DispatchQueue.main.async {
                if let responseText = responseText {
                    let responseMessage = self.saveMessage(responseText, role: "assistant", in: conversation)
                    self.messages.append(responseMessage)
                    completion(responseText)
                } else {
                    completion("Failed to get a reply from OpenAI")
                }
            }
        }
    }

    private func requestResponse(for text: String, completion: @escaping (String?) -> Void) {
        guard let url = URL(string: "https://vinobytes-afe480cea091.herokuapp.com/api/chat") else {
            completion(nil)
            return
        }
        var request = URLRequest(url: url)
        request.httpMethod = "POST"
        request.addValue("application/json", forHTTPHeaderField: "Content-Type")

        // Include the system message along with the user's message and set max_tokens to 150
        let body: [String: Any] = [
            "messages": [systemMessage, ["role": "user", "content": text]],
            "max_tokens": 150
        ]

        do {
            request.httpBody = try JSONSerialization.data(withJSONObject: body, options: [])
        } catch {
            completion(nil)
            return
        }

        URLSession.shared.dataTask(with: request) { data, response, error in
            guard let data = data, error == nil else {
                completion(nil)
                return
            }
            let result = try? JSONDecoder().decode(OpenAIResponse.self, from: data)
            completion(result?.choices.first?.message.content)
        }.resume()
    }

    func saveMessage(_ text: String, role: String, in conversation: Conversation) -> ChatMessage {
        let message = ChatMessage(context: context)
        message.id = UUID()
        message.content = text
        message.role = role
        message.timestamp = Date()
        message.conversation = conversation
        
        do {
            try context.save()
        } catch {
            print("Error saving message: \(error)")
        }
        return message
    }

    func startNewConversation() -> Conversation {
        let conversation = Conversation(context: context)
        conversation.id = UUID()
        conversation.startTime = Date()
        
        do {
            try context.save()
        } catch {
            print("Error starting a new conversation: \(error)")
        }
        loadAllConversations()  // Reload conversations after creating a new one
        return conversation
    }

    func loadAllConversations() {
        let fetchRequest: NSFetchRequest<Conversation> = Conversation.fetchRequest()
        fetchRequest.sortDescriptors = [NSSortDescriptor(key: "startTime", ascending: false)]
        
        do {
            conversations = try context.fetch(fetchRequest)
        } catch {
            print("Failed to load conversations: \(error)")
        }
    }

    func loadMessages(from conversation: Conversation) {
        let fetchRequest: NSFetchRequest<ChatMessage> = ChatMessage.fetchRequest()
        fetchRequest.predicate = NSPredicate(format: "conversation == %@", conversation)
        fetchRequest.sortDescriptors = [NSSortDescriptor(key: "timestamp", ascending: true)]
        
        do {
            messages = try context.fetch(fetchRequest)
        } catch {
            print("Failed to load messages: \(error)")
        }
    }

    func endConversation(_ conversation: Conversation) {
        context.delete(conversation)
        do {
            try context.save()
        } catch {
            print("Failed to delete conversation: \(error)")
        }
        loadAllConversations()  // Reload conversations after deletion
    }

    // New method to delete a conversation
    func deleteConversation(at offsets: IndexSet) {
        for index in offsets {
            let conversation = conversations[index]
            context.delete(conversation)
        }
        do {
            try context.save()
            loadAllConversations()  // Reload conversations after deletion
        } catch {
            print("Failed to delete conversation: \(error)")
        }
    }
}

struct OpenAIResponse: Codable {
    struct Choice: Codable {
        struct Message: Codable {
            let role: String
            let content: String
        }
        let message: Message
        let index: Int
        let logprobs: String?
        let finish_reason: String
    }
    let id: String
    let object: String
    let created: Int
    let model: String
    let choices: [Choice]
    let usage: Usage

    struct Usage: Codable {
        let prompt_tokens: Int
        let completion_tokens: Int
        let total_tokens: Int
    }
}
