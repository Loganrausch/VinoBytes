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
    @Published var messages: [ChatMessage] = []
    @Published var activeConversation: Conversation?  // Track the active conversation
    private let context: NSManagedObjectContext
    
    // System message to set context for the assistant
    private let systemMessage = ["role": "system", "content": "You are a wine expert assistant. Answer all questions with a focus on wine and wine education. Provide detailed information about wine regions, grape varieties, wine tasting notes, and wine production methods."]
    
    init(context: NSManagedObjectContext) {
        self.context = context
        loadAllConversations()
    }
    
    func sendMessage(_ text: String, in conversation: Conversation, completion: @escaping (String?) -> Void) {
        let userMessage = saveMessage(text, role: "user", in: conversation)

        // Set the conversation title if it hasn't been set yet (i.e., it's nil)
        if conversation.title == nil {
            conversation.title = text  // Use the first user message as the title
            do {
                try context.save()
            } catch {
                print("Failed to update conversation: \(error)")
            }
        }

        DispatchQueue.main.async {
            self.messages.append(userMessage)
            self.loadMessages(from: conversation)
        }

        let lastTwoMessages = self.messages.suffix(2).map { ["role": $0.role, "content": $0.content as String?] }

        requestResponse(for: text, context: lastTwoMessages) { responseText in
            DispatchQueue.main.async {
                guard let responseText = responseText else {
                    completion("Failed to get a reply from OpenAI")
                    return
                }
                let responseMessage = self.saveMessage(responseText, role: "assistant", in: conversation)
                self.messages.append(responseMessage)
                completion(nil)
            }
        }
    }
    
    private func requestResponse(for text: String, context: [[String: String?]], completion: @escaping (String?) -> Void) {
        guard let url = URL(string: "https://vinobytes-afe480cea091.herokuapp.com/api/chat") else {
            completion("API URL is not valid")
            return
        }
        var request = URLRequest(url: url)
        request.httpMethod = "POST"
        request.addValue("application/json", forHTTPHeaderField: "Content-Type")
        
        let modifiedContext = context.map { dict in
            dict.compactMapValues { $0 }  // Remove nil values if they are not handled by the API
        }
        
        let body: [String: Any] = [
            "messages": [systemMessage] + modifiedContext + [["role": "user", "content": text]],
            "max_tokens": 500
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
            do {
                let result = try JSONDecoder().decode(OpenAIResponse.self, from: data)
                
                print("Prompt tokens used: \(result.usage.prompt_tokens)")
                print("Completion tokens used: \(result.usage.completion_tokens)")
                print("Total tokens used: \(result.usage.total_tokens)")
                
                completion(result.choices.first?.message.content)
            } catch {
                completion(nil)
            }
        }.resume()
    }
    
    func saveMessage(_ text: String, role: String, in conversation: Conversation?) -> ChatMessage {
        
        
        assert(conversation != nil, "saveMessage was called without a valid conversation.")
            guard let conversation = conversation else {
                fatalError("Attempted to save a message without a conversation.")
            }
        
        let message = ChatMessage(context: context)
        message.id = UUID()
        message.content = text
        message.role = role
        message.timestamp = Date()
        message.conversation = conversation
        
        // Assign the next sequence number
           if let lastMessage = conversation.messages?.sorted(by: {
               ($0 as! ChatMessage).sequenceNumber < ($1 as! ChatMessage).sequenceNumber
           }).last as? ChatMessage {
               message.sequenceNumber = lastMessage.sequenceNumber + 1
           } else {
               message.sequenceNumber = 1  // This is the first message
           }
        
        do {
            try context.save()
        } catch {
            print("Error saving message: \(error)")
        }
        return message
    }
    
    // Method to start a new conversation without saving it immediately
    func startNewConversation() -> Conversation {
        let conversation = Conversation(context: context)
        conversation.id = UUID()
        conversation.startTime = Date()
        conversation.isActive = true // This remains true until the conversation is ended
        
        self.activeConversation = conversation // Set the newly created conversation as active but do not save it yet
        return conversation
    }
    
    // Modified method to load only ended conversations
    func loadAllConversations() {
        let fetchRequest: NSFetchRequest<Conversation> = Conversation.fetchRequest()
        fetchRequest.predicate = NSPredicate(format: "isActive == NO") // Only fetch conversations that are not active
        fetchRequest.sortDescriptors = [NSSortDescriptor(key: "endTime", ascending: false)] // Sort by end time now
        
        do {
            conversations = try context.fetch(fetchRequest)
        } catch {
            print("Failed to load conversations: \(error)")
        }
    }
    
    func loadMessages(from conversation: Conversation) {
        let fetchRequest: NSFetchRequest<ChatMessage> = ChatMessage.fetchRequest()
        fetchRequest.predicate = NSPredicate(format: "conversation == %@", conversation)
        fetchRequest.sortDescriptors = [
                NSSortDescriptor(key: "sequenceNumber", ascending: true)  // Sort by sequenceNumber instead of timestamp
            ]
        
        do {
            messages = try context.fetch(fetchRequest)
        } catch {
            print("Failed to load messages: \(error)")
        }
    }
    
    // Updated method to end and save the conversation
    func endConversation(_ conversation: Conversation) {
        conversation.isActive = false
        conversation.endTime = Date()  // Set the end time of the conversation

        do {
            try context.save()
            loadAllConversations()  // Optionally refresh the list to include this now ended conversation
        } catch let error {
            print("Failed to end conversation: \(error)")
        }
    }
    
    func clearTemporaryData() {
            // Clear the messages or reset any other relevant state here
            messages.removeAll()
            // Add any other cleanup code needed to reset the manager's state
        }
    
    // Updated method to prevent deletion of the active conversation
    // Method to delete a conversation
    func deleteConversation(_ conversation: Conversation) {
        context.delete(conversation)
        do {
            try context.save()
            loadAllConversations()  // Optional: Refresh your conversation list after deletion
        } catch let error {
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
