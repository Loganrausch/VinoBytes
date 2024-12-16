//
//  OpenAIChatView.swift
//  VinoBytes
//
//  Created by Logan Rausch on 6/11/24.
//

import SwiftUI
import MarkdownUI
import RevenueCat
import RevenueCatUI

struct OpenAIChatView: View {
    @Environment(\.managedObjectContext) private var managedObjectContext
    @EnvironmentObject var openAIManager: OpenAIManager
    @EnvironmentObject var authViewModel: AuthViewModel  // Access subscription status
    @State private var inputText = ""
    @State private var selectedConversation: Conversation?
    @State private var showConversationHistory = false
    @State private var keyboardHeight: CGFloat = 0
    @State private var isLoading = false
    @State private var scrollViewProxy: ScrollViewProxy?
    @State private var showEndChatAlert = false  // State for showing the end chat alert
    @State private var isPaywallPresented = false  // Controls the presentation of the paywall


    
    var body: some View {
        NavigationView {
            ZStack {
                // Main Content
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
                                .onChange(of: openAIManager.messages.count) { _, _ in
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
                            .opacity(0.7)
                        
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
                        
                        CustomTextField(placeholder: "Ask me anything wine related!", text: $inputText, onSend: {
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
                        .padding(.bottom, 20) // Adjust padding to account for tab view
                       
                    }
                    .contentShape(Rectangle()) // Ensure the gesture covers the entire area
                                   .gesture(
                                       DragGesture().onEnded { value in
                                           if value.translation.height > 50 {
                                               UIApplication.shared.sendAction(#selector(UIResponder.resignFirstResponder), to: nil, from: nil, for: nil)
                                           }
                                       }
                                   ) // Attach the gesture here
                }
                .padding(.horizontal, 0)
                .contentShape(Rectangle()) // Ensures the gesture area covers the entire VStack
                .onTapGesture {
                    hideKeyboard()
                }
                
                .navigationBarTitle("Vino Chat", displayMode: .inline)
                .toolbar {
                    ToolbarItem(placement: .navigationBarLeading) {
                        if authViewModel.hasActiveSubscription {
                            Button(action: {
                                showConversationHistory.toggle()
                            }) {
                                Image(systemName: "list.bullet")
                                    .imageScale(.large)
                                    .foregroundColor(Color("Latte"))
                            }
                        }
                    }
                    
                    ToolbarItem(placement: .navigationBarTrailing) {
                        if authViewModel.hasActiveSubscription {
                            Button(action: {
                                showEndChatAlert = true
                            }) {
                                Text("End Chat")
                                    .foregroundColor(Color("Latte"))
                                    .font(.headline)
                            }
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
                            
                            // Increment counter and possibly request a review
                            incrementChatEndCounterAndMaybeRequestReview()
                        }
                    )
                }
                .sheet(isPresented: $showConversationHistory) {
                    ConversationHistoryView()
                        .preferredColorScheme(.light)
                }
                
                .onAppear(perform: subscribeToKeyboardEvents)
                
                // Overlay for Non-Subscribed Users
                if !authViewModel.hasActiveSubscription {
                    Color.black.opacity(0.3)
                        .edgesIgnoringSafeArea(.all)
                    
                    VStack(spacing: 20) {
                        Text("Premium Feature")
                            .font(.title)
                            .bold()
                            .foregroundColor(.lightMaroon)
                        
                        Text("Please upgrade to the premium subscription to access our AI wine assistant.")
                            .font(.body)
                            .multilineTextAlignment(.center)
                            .padding(.horizontal)
                            .foregroundColor(.lightMaroon)
                        
                        Button(action: {
                            startSubscriptionProcess()
                        }) {
                            Text("Subscribe")
                                .bold()
                                .foregroundColor(.lightMaroon)
                                .padding()
                                .frame(maxWidth: .infinity)
                                .background(Color("Latte"))
                                .cornerRadius(10)
                                .overlay(
                                    RoundedRectangle(cornerRadius: 10)
                                        .stroke(Color.lightMaroon, lineWidth: 2) // Adjust line width as needed
                                )
                                .shadow(radius: 5)
                                .padding(.horizontal, 50)
                        }
                    }
                    .padding() // Inner padding for content within the overlay
                    .background(Color("Latte")) // Using fully opaque background
                    .cornerRadius(10) // Softening the corners of the overlay content
                    .padding(.horizontal, 20) // Adds horizontal padding to prevent touching the sides
                    .shadow(radius: 20) // Optional: Add shadow to elevate the content above the dark background
                    .frame(maxWidth: .infinity, maxHeight: .infinity, alignment: .center)
                }
            }
                    .sheet(isPresented: $isPaywallPresented) {
                        PaywallView()
                            .environmentObject(authViewModel)
                    }
            }
        }

              // Helper Functions
              private func startSubscriptionProcess() {
                  Purchases.shared.getOfferings { offerings, error in
                      if let offerings = offerings, let offering = offerings.current {
                          if offering.availablePackages.isEmpty {
                              print("No packages available")
                          } else {
                              isPaywallPresented = true  // Trigger the paywall presentation
                          }
                      } else if let error = error {
                          print("Error fetching offerings: \(error.localizedDescription)")
                      }
                  }
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
    
    private func hideKeyboard() {
           UIApplication.shared.sendAction(#selector(UIResponder.resignFirstResponder), to: nil, from: nil, for: nil)
       }
    
    private func incrementChatEndCounterAndMaybeRequestReview() {
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
}


struct CustomTextField: View {
    var placeholder: String
    @Binding var text: String
    var onSend: () -> Void
    @FocusState private var isFocused: Bool
    
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
                    .focused($isFocused)
            }
            
            Button(action: {
                            // Dismiss the keyboard and stop voice input
                            isFocused = false
                            onSend()
                        }) {
                            Image(systemName: "arrow.up.square")
                                .resizable()
                                .frame(width: 26, height: 26)
                                .foregroundColor(Color("LightMaroon"))
                                .padding(.trailing, -4)
                        }
                    }
        .padding(.horizontal)
        .padding(.vertical, 8)
        .background(Color.lightLatte.opacity(0.8))
        .cornerRadius(8)
        .overlay(
            RoundedRectangle(cornerRadius: 8)
                .stroke(Color.lightMaroon, lineWidth: 2)
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
            Markdown(content)
                .markdownTheme(.userBubbleTheme)
                .padding()
                .background(Color("Maroon").opacity(0.38))
                .clipShape(RoundedRectangle(cornerRadius: 12))
                .frame(maxWidth: 300, alignment: .trailing)
                .layoutPriority(1)
        } else {
            Markdown(content)
                .markdownTheme(.assistantBubbleTheme)
                .padding()
                .background(Color("DarkLatte"))
                .clipShape(RoundedRectangle(cornerRadius: 12))
                .frame(maxWidth: 300, alignment: .leading)
                .layoutPriority(1)
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

extension Theme {
    static let userBubbleTheme = Theme()
        .text {
            ForegroundColor(.primary)
            FontSize(16)
        }
        .heading1 { configuration in
            configuration.label
                .font(.system(size: 24, weight: .bold))
        }
        .heading2 { configuration in
            configuration.label
                .font(.system(size: 20, weight: .bold))
        }
        .paragraph { configuration in
            configuration.label
                .font(.system(size: 16))
        }
        // Add more customizations as needed

    static let assistantBubbleTheme = Theme()
        .text {
            ForegroundColor(.primary)
            FontSize(16)
        }
        .heading1 { configuration in
            configuration.label
                .font(.system(size: 24, weight: .bold))
        }
        .heading2 { configuration in
            configuration.label
                .font(.system(size: 20, weight: .bold))
        }
        .paragraph { configuration in
            configuration.label
                .font(.system(size: 16))
        }
        // Add more customizations as needed
}
