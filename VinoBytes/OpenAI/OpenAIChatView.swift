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
    @State private var isLoading = false
    @State private var scrollViewProxy: ScrollViewProxy?  // State to hold the ScrollViewProxy

    var body: some View {
        NavigationView {
            GeometryReader { geometry in
                VStack {
                    Spacer(minLength: 25)
                    VStack {
                        if let selectedConversation = selectedConversation {
                            ScrollView {
                                ScrollViewReader { proxy in
                                    VStack {
                                        ForEach(openAIManager.messages) { message in
                                            MessageView(message: message)
                                        }
                                    }
                                        
                                        
                                    .onChange(of: openAIManager.messages.count) { _ in
                                                                            DispatchQueue.main.asyncAfter(deadline: .now() + 0.1) {
                                                                                if let lastUserMessage = openAIManager.messages.last(where: { $0.role == "user" }) {
                                                                                    proxy.scrollTo(lastUserMessage.id, anchor: .top)
                                                                            }
                                                                        }
                                                                    }
                                                                }
                                                            }
                                                        } else {
                            Text("The world of wine, uncorked.")
                                .foregroundColor(.gray)
                        }
                    }
                    .frame(width: min(geometry.size.width * 0.84, 350), height: 495)
                    .padding()
                    .background(Color("latte"))
                    .cornerRadius(10)
                    .overlay(
                        RoundedRectangle(cornerRadius: 10)
                            .stroke(Color("Maroon"), lineWidth: 1.2)
                    )
                    
                    if isLoading {
                        WineGlassLoadingView()  // This will show the loading animation outside the ScrollView.
                            .scaleEffect(1.5)
                            .transition(.opacity)
                        }
                    
                    Image("OpenAIBadge")
                        .resizable()
                        .aspectRatio(contentMode: .fit)
                        .frame(width: 110, height: 110)
                        .padding(.top, -45)
                        .padding(.bottom, -30)
                    
                    
                    
                    VStack {
                        CustomTextField(placeholder: "Ask me anything...", text: $inputText, onSend: {
                            if !inputText.trimmingCharacters(in: .whitespaces).isEmpty {
                                let messageToSend = inputText
                                inputText = ""
                                
                                if selectedConversation == nil {
                                    selectedConversation = openAIManager.startNewConversation()
                                }
                                
                                if let conversation = selectedConversation {
                                    isLoading = true
                                    openAIManager.sendMessage(messageToSend, in: conversation) { errorMessage in
                                        DispatchQueue.main.async {
                                            isLoading = false
                                            if let error = errorMessage {
                                                print("Error sending message: \(error)")
                                            } else if let lastUserMessage = openAIManager.messages.last(where: { $0.role == "user" }) {
                                                scrollViewProxy?.scrollTo(lastUserMessage.id, anchor: .bottom)
                                            }
                                        }
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
                        .foregroundColor(Color("Maroon"))
                    }
                    .padding(.bottom, keyboardHeight)
                    Spacer()
                }
            }
            .background(Color("Latte"))
            .navigationBarTitle("Vino Chat", displayMode: .inline)
            .toolbar {
                ToolbarItem(placement: .navigationBarTrailing) {
                    Button(action: {
                        showConversationHistory.toggle()
                    }) {
                        Image(systemName: "list.bullet")
                            .imageScale(.large)
                            .foregroundColor(Color("Latte"))
                    }
                }
            }
            .sheet(isPresented: $showConversationHistory) {
                ConversationHistoryView(openAIManager: openAIManager)
                    .preferredColorScheme(.light)
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
                    .foregroundColor(Color("Maroon"))
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

struct MessageView: View {
    var message: ChatMessage
    
    var body: some View {
        HStack {
            if let content = message.content, !content.isEmpty {
                messageBubble(for: content, isUser: message.role == "user")
            } else {
                // Optionally handle empty messages differently or not at all
                Text("Message unavailable")  // More informative fallback text
                    .foregroundColor(.gray)
                    .padding()
            }
        }
        .padding(.horizontal)
    }

    @ViewBuilder
    private func messageBubble(for content: String, isUser: Bool) -> some View {
        if isUser {
            Spacer()
            Text(content)
                .padding()
                .background(Color("Maroon").opacity(0.2))  // Adjust opacity as needed
                .clipShape(RoundedRectangle(cornerRadius: 12))
                .frame(maxWidth: 300, alignment: .trailing)
        } else {
            Text(content)
                .padding()
                .background(Color(red: 205/255, green: 190/255, blue: 170/255).opacity((0.4)))  // Warm Grey color for user messages
                .clipShape(RoundedRectangle(cornerRadius: 12))
                .frame(maxWidth: 300, alignment: .leading)
            Spacer()
        }
    }
}

struct OpenAIChatView_Previews: PreviewProvider {
    static var previews: some View {
        OpenAIChatView().environment(\.managedObjectContext, PersistenceController.shared.container.viewContext)
    }
}
