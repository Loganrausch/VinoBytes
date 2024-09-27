//
//  OpenAIChatView.swift
//  VinoBytes
//
//  Created by Logan Rausch on 6/11/24.
//

import SwiftUI

struct OpenAIChatView: View {
    @Environment(\.managedObjectContext) private var managedObjectContext
    @EnvironmentObject var openAIManager: OpenAIManager
    
    @State private var inputText = ""
    @State private var selectedConversation: Conversation?
    @State private var showConversationHistory = false
    @State private var keyboardHeight: CGFloat = 0
    @State private var isLoading = false
    @State private var scrollViewProxy: ScrollViewProxy?
    @State private var showEndChatAlert = false  // State for showing the end chat alert

    var body: some View {
        NavigationView {
            VStack {
                            if selectedConversation != nil && !openAIManager.messages.isEmpty {
                                ScrollView {
                                    ScrollViewReader { proxy in
                                        VStack {
                                            ForEach(openAIManager.messages) { message in
                                                MessageView(message: message)
                                            }
                                            if isLoading {
                                                HStack {
                                                    WineGlassLoadingView()
                                                        .scaleEffect(1.5)
                                                        .padding(.vertical, 10)
                                                    Spacer()
                                                }
                                                .frame(maxWidth: .infinity, alignment: .leading)
                                                .padding(.horizontal)
                                            }
                                        }
                                        .padding(.top, 20)  // Add padding to the top of the ScrollView content
                                        .onAppear {
                                            self.scrollViewProxy = proxy
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
                                Spacer()
                                Text("The world of wine, uncorked.")
                                    .foregroundColor(.gray)
                            }
                                Spacer()
                
                    
                VStack(spacing: 0) {
                                    Rectangle()
                                        .fill(Color("LightMaroon"))
                                        .frame(height: 2)
                                        .opacity(0.6)
                                    
                                    VStack {
                                        Spacer(minLength: 0)
                                        
                                        Image("OpenAIBadge")
                                            .resizable()
                                            .aspectRatio(contentMode: .fit)
                                            .frame(width: 120, height: 120)
                                            .padding(.bottom, -25)
                                            .padding(.top, -30)
                                        
                                        Spacer(minLength: 0)
                                    }
                                    .frame(maxWidth: .infinity, maxHeight: 70)
                                    .contentShape(Rectangle())
                                    .background(Color.clear)
                                    
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
                
                }
                .padding(.bottom, 20) // Adjust padding to account for tab view
                                .gesture(DragGesture().onEnded { value in
                                    if value.translation.height > 50 {
                                        UIApplication.shared.sendAction(#selector(UIResponder.resignFirstResponder), to: nil, from: nil, for: nil)
                                    }
                                })
                            }
                            .padding(.horizontal, 0)
          
            .navigationBarTitle("Vino Chat", displayMode: .inline)
            .toolbar {
                ToolbarItem(placement: .navigationBarLeading) {
                    Button(action: {
                        showConversationHistory.toggle()
                    }) {
                        Image(systemName: "list.bullet")
                            .imageScale(.large)
                            .foregroundColor(Color("Latte"))
                    }
                }
                ToolbarItem(placement: .navigationBarTrailing) {
                                   Button(action: {
                                       showEndChatAlert = true
                                   }) {
                                       Text("End Chat")
                                           .foregroundColor(Color("Latte"))
                                           .font(.headline)
                                   }
                               }
                           }
            .alert(isPresented: $showEndChatAlert) {
                Alert(
                    title: Text("End Chat"),
                    message: Text("Would you like to save your current chat?"),
                    primaryButton: .destructive(Text("Don't Save")) {
                        // Code to handle not saving the chat
                        selectedConversation = nil
                        inputText = ""
                        openAIManager.messages.removeAll()
                    },
                    secondaryButton: .default(Text("Save")) {
                        // Code to handle saving the chat
                        if let conversation = selectedConversation {
                            openAIManager.endConversation(conversation)
                        }
                        selectedConversation = nil
                        inputText = ""
                        openAIManager.messages.removeAll()
                    }
                )
            }
                           .sheet(isPresented: $showConversationHistory) {
                ConversationHistoryView()
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
                    .accentColor(.black) // Set cursor color here
                    .padding(4)
            }
            
            Button(action: onSend) {
                Image(systemName: "arrow.up.square")
                    .resizable()
                    .frame(width: 26, height: 26)
                    .foregroundColor(Color("LightMaroon"))
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
                .background(Color("Maroon").opacity(0.38))  // Adjust opacity as needed
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
        OpenAIChatView()
            .environment(\.managedObjectContext, PersistenceController.shared.container.viewContext)
            .environmentObject(OpenAIManager(context: PersistenceController.shared.container.viewContext))
    }
}

