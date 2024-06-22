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
                    .frame(width: min(geometry.size.width * 0.84, 350), height: 525) // Dynamic width, fixed height
                    .padding()
                    .background(Color.white)
                    .cornerRadius(10)
                    .overlay(
                        RoundedRectangle(cornerRadius: 10)
                            .stroke(Color(red: 128/255, green: 0, blue: 0), lineWidth: 1.2)
                    )
                    
                    Image("OpenAIBadge")
                        .resizable()
                        .aspectRatio(contentMode: .fit)
                        .frame(width: 110, height: 110) // Adjust the size as needed
                        .padding(.top, -45)
                        .padding(.bottom, -30)
                    
                    VStack {
                        CustomTextField(placeholder: "Ask me anything...", text: $inputText, onSend: {
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
                        })
                        .padding(.horizontal)
                        
                        Button("Start New Conversation") {
                            selectedConversation = nil
                            inputText = ""
                        }
                        .padding()
                        .foregroundColor(Color(red: 128/255, green: 0, blue: 0))
                    }
                    .padding(.bottom, keyboardHeight)  // Adjust this padding based on the keyboard height
                    Spacer()
                }
            }
            .navigationBarTitle("Vino Chat", displayMode: .inline)
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

struct CustomTextField: View {
    var placeholder: String
    @Binding var text: String
    var onSend: () -> Void
    
    var body: some View {
        HStack {
            ZStack(alignment: .leading) {
                if text.isEmpty {
                    Text(placeholder)
                        .foregroundColor(.gray) // Placeholder text color
                        .padding(.leading, 4)
                }
                TextField("", text: $text)
                    .foregroundColor(.black) // Input text color
                    .padding(4)
            }
            
            Button(action: onSend) {
                Image(systemName: "arrow.up.square")
                    .resizable()
                    .frame(width: 26, height: 26)
                    .foregroundColor(Color(red: 128/255, green: 0, blue: 0))
                    .padding(.trailing, -4)
            }
        }
        .padding(.horizontal)
        .padding(.vertical, 8)
        .background(Color.gray.opacity(0.08))
        .cornerRadius(8)
        .overlay(
            RoundedRectangle(cornerRadius: 8)
                .stroke(Color.black, lineWidth: 1)
        )
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
