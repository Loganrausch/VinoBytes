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
    @State private var keyboardHeight: CGFloat = 0  // State to track keyboard height
    
    var body: some View {
        NavigationView {
            GeometryReader { geometry in
                VStack {
                    VStack {
                        if let selectedConversation = selectedConversation {
                            ScrollView {
                                VStack {
                                    ForEach(openAIManager.messages) { message in
                                        MessageView(message: message)
                                    }
                                }
                            }
                        } else {
                            Text("The world of wine, uncorked.")
                                .foregroundColor(.gray)
                        }
                    }
                    .frame(width: min(geometry.size.width * 0.83, 350), height: 525) // Dynamic width, fixed height
                    .padding()
                    .background(Color.white)
                    .cornerRadius(10)
                    .overlay(
                        RoundedRectangle(cornerRadius: 10)
                            .stroke(Color(red: 128/255, green: 0, blue: 0), lineWidth: 1.2)
                    )

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
                        
                        Button("Start New Conversation") {
                            selectedConversation = nil
                            inputText = ""
                        }
                        .padding()
                        .foregroundColor(Color(red: 128/255, green: 0, blue: 0))
                    }
                    .padding(.bottom, keyboardHeight)  // Adjust this padding based on the keyboard height
                }
            }
            .navigationBarTitle("VinoAi Chat", displayMode: .inline)
            .toolbar {
                ToolbarItem(placement: .navigationBarTrailing) {
                    Button(action: {
                        showConversationHistory.toggle()
                    }) {
                        Image(systemName: "list.bullet")
                            .imageScale(.large)
                            .foregroundColor(Color(red: 128/255, green: 0, blue: 0))
                    }
                }
            }
            .sheet(isPresented: $showConversationHistory) {
                ConversationHistoryView(openAIManager: openAIManager)
                .preferredColorScheme(.light)  // Forces the sheet to be displayed in light mode
            }
        }
        .onAppear(perform: subscribeToKeyboardEvents)
    }

    private func subscribeToKeyboardEvents() {
        NotificationCenter.default.addObserver(forName: UIResponder.keyboardWillShowNotification, object: nil, queue: .main) { notification in
            guard let keyboardFrame = notification.userInfo?[UIResponder.keyboardFrameEndUserInfoKey] as? CGRect else { return }
            guard let windowScene = UIApplication.shared.connectedScenes.first as? UIWindowScene else { return }
            guard let safeAreaInsets = windowScene.windows.first?.safeAreaInsets.bottom else { return }
            
            keyboardHeight = keyboardFrame.height - safeAreaInsets
        }

        NotificationCenter.default.addObserver(forName: UIResponder.keyboardWillHideNotification, object: nil, queue: .main) { _ in
            keyboardHeight = 0
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
