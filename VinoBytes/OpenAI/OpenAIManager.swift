//
//  OpenAIManager.swift
//  VinoBytes
//
//  Created by Logan Rausch on 6/11/24.
//

import Foundation
import CoreData
import SwiftUI

struct Message: Identifiable {
    let id: UUID
    let role: String
    let content: String
    let timestamp: Date
}

class OpenAIManager: ObservableObject {
    @Published var messages: [Message] = []
    private let context: NSManagedObjectContext

    init(context: NSManagedObjectContext) {
        self.context = context
        loadRecentMessages()
    }

    func sendMessage(_ text: String, completion: @escaping (String?) -> Void) {
        let userMessage = Message(id: UUID(), role: "user", content: text, timestamp: Date())
        messages.append(userMessage)
        saveMessage(userMessage)

        guard let url = URL(string: "https://vinobytes-afe480cea091.herokuapp.com/api/chat") else {
            print("Invalid URL")
            completion("Invalid URL")
            return
        }

        var request = URLRequest(url: url)
        request.httpMethod = "POST"
        request.addValue("application/json", forHTTPHeaderField: "Content-Type")

        let body: [String: Any] = [
            "messages": messages.map { ["role": $0.role, "content": $0.content] }
        ]

        do {
            request.httpBody = try JSONSerialization.data(withJSONObject: body, options: [])
        } catch {
            print("Failed to encode request body: \(error)")
            completion("Failed to encode request body")
            return
        }

        URLSession.shared.dataTask(with: request) { data, response, error in
            guard let data = data, error == nil else {
                print("Error: \(error?.localizedDescription ?? "No data")")
                completion("Network error: \(error?.localizedDescription ?? "No data")")
                return
            }

            // Debugging: print the raw response
            if let rawResponse = String(data: data, encoding: .utf8) {
                print("Raw response: \(rawResponse)")
            }

            do {
                let result = try JSONDecoder().decode(OpenAIResponse.self, from: data)
                if let reply = result.choices.first?.message.content {
                    DispatchQueue.main.async {
                        let assistantMessage = Message(id: UUID(), role: "assistant", content: reply, timestamp: Date())
                        self.messages.append(assistantMessage)
                        self.saveMessage(assistantMessage)
                        completion(reply)
                    }
                } else {
                    print("Failed to get a reply from OpenAI")
                    completion("Failed to get a reply from OpenAI")
                }
            } catch {
                print("Failed to decode response: \(error)")
                completion("Failed to decode response")
            }
        }.resume()
    }

    private func saveMessage(_ message: Message) {
        let newMessage = ChatMessage(context: context)
        newMessage.id = message.id
        newMessage.role = message.role
        newMessage.content = message.content
        newMessage.timestamp = message.timestamp

        do {
            try context.save()
        } catch {
            print("Failed to save message: \(error)")
        }
    }

    private func loadRecentMessages() {
        let fetchRequest: NSFetchRequest<ChatMessage> = ChatMessage.fetchRequest()
        fetchRequest.sortDescriptors = [NSSortDescriptor(key: "timestamp", ascending: false)]
        fetchRequest.fetchLimit = 10

        do {
            let chatMessages = try context.fetch(fetchRequest)
            self.messages = chatMessages.map { Message(id: $0.id ?? UUID(), role: $0.role ?? "", content: $0.content ?? "", timestamp: $0.timestamp ?? Date()) }.reversed()
        } catch {
            print("Failed to load messages: \(error)")
        }
    }

    func loadAllMessages() {
        let fetchRequest: NSFetchRequest<ChatMessage> = ChatMessage.fetchRequest()
        fetchRequest.sortDescriptors = [NSSortDescriptor(key: "timestamp", ascending: true)]

        do {
            let chatMessages = try context.fetch(fetchRequest)
            self.messages = chatMessages.map { Message(id: $0.id ?? UUID(), role: $0.role ?? "", content: $0.content ?? "", timestamp: $0.timestamp ?? Date()) }
        } catch {
            print("Failed to load messages: \(error)")
        }
    }

    func clearMessages() {
        let fetchRequest: NSFetchRequest<NSFetchRequestResult> = ChatMessage.fetchRequest()
        let deleteRequest = NSBatchDeleteRequest(fetchRequest: fetchRequest)

        do {
            try context.execute(deleteRequest)
            messages.removeAll()
        } catch {
            print("Failed to clear messages: \(error)")
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
