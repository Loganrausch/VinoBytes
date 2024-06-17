//
//  OpenAIChatView.swift
//  VinoBytes
//
//  Created by Logan Rausch on 6/11/24.
//

import SwiftUI

struct OpenAIChatView: View {
    @Environment(\.managedObjectContext) private var managedObjectContext
    @StateObject var openAIManager = OpenAIManager(context: PersistenceController.shared.container.viewContext)
    
    @State private var inputText = ""
    @State private var selectedConversation: Conversation?
    @State private var showConversationHistory = false  // State for toggling conversation history
    
    var body: some View {
        NavigationView {
            VStack {
                // Message display area with border
                VStack {
                    if let selectedConversation = selectedConversation {
                        ScrollView {
                            ForEach(openAIManager.messages) { message in
                                MessageView(message: message)
                            }
                        }
                    } else {
                        Text("The world of wine, uncorked.")
                            .foregroundColor(.gray)
                    }
                }
                .frame(minWidth: 300, minHeight: 400)  // Set a minimum width and height for the message display box
                .padding()
                .background(Color.white)
                .cornerRadius(10)
                .overlay(
                    RoundedRectangle(cornerRadius: 10)
                        .stroke((Color(red: 235/255, green: 218/255, blue: 170/255)), lineWidth: 1.2)
                )
                .padding()

                // TextField and buttons
                VStack {
                    HStack {
                        TextField("Ask me anything...", text: $inputText)
                            .textFieldStyle(RoundedBorderTextFieldStyle())
                            .padding(.leading)
                        
                        Button(action: {
                                                    if !inputText.trimmingCharacters(in: .whitespaces).isEmpty {
                                                        if selectedConversation == nil {
                                                            selectedConversation = openAIManager.startNewConversation()
                                                        }
                                                        if let conversation = selectedConversation {
                                                            openAIManager.sendMessage(inputText, in: conversation) { _ in
                                                                inputText = ""  // Clear text field after sending
                                                            }
                                                        }
                                                    }
                                                }) {
                                                    Image(systemName: "arrow.up.square")
                                                        .resizable()
                                                        .frame(width: 30, height: 30)
                                                        .foregroundColor(Color(red: 128/255, green: 0, blue: 0))
                                                }
                                                .padding(.trailing)
                                            }
                                            .padding(.bottom)
                    
                    Button("Start New Conversation") {
                        selectedConversation = nil
                        inputText = ""
                    }
                    .padding()
                    .foregroundColor(Color(red: 128/255, green: 0, blue: 0))
                }
            }
            .navigationBarTitleDisplayMode(.inline)
            .toolbar {
                ToolbarItem(placement: .principal) {
                    HStack {
                        Text("Chat")
                            .font(.title)
                        Spacer()
                        Button(action: {
                            showConversationHistory.toggle()
                        }) {
                            Image(systemName: "list.bullet")
                                .imageScale(.large)
                        }
                    }
                }
            }
            .sheet(isPresented: $showConversationHistory) {
                ConversationHistoryView(openAIManager: openAIManager)
            }
        }
    }
}

struct ConversationView: View {
    var conversation: Conversation

    private var displayText: String {
        if let startTime = conversation.startTime {
            let formatter = DateFormatter()
            formatter.dateStyle = .long
            formatter.timeStyle = .short
            return "Conversation started on \(formatter.string(from: startTime))"
        } else {
            return "Date unavailable"
        }
    }

    var body: some View {
        Text(displayText)
    }
}

struct MessageView: View {
    var message: ChatMessage
    
    var body: some View {
        HStack {
            if message.role == "user" {
                Spacer()
                Text(message.content ?? "No content")
                    .padding()
                    .background(Color.blue.opacity(0.2))
                    .clipShape(RoundedRectangle(cornerRadius: 12))
                    .frame(maxWidth: 300, alignment: .trailing)
            } else {
                Text(message.content ?? "No content")
                    .padding()
                    .background(Color.green.opacity(0.2))
                    .clipShape(RoundedRectangle(cornerRadius: 12))
                    .frame(maxWidth: 300, alignment: .leading)
                Spacer()
            }
        }
        .padding(.horizontal)
    }
}

struct OpenAIChatView_Previews: PreviewProvider {
    static var previews: some View {
        OpenAIChatView().environment(\.managedObjectContext, PersistenceController.shared.container.viewContext)
    }
}
