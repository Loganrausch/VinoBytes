//
//  OpenAIChatView.swift
//  VinoBytes
//
//  Created by Logan Rausch on 6/11/24.
//

import SwiftUI
import RevenueCatUI

struct ChatView: View {
    
    // MARK: - Environment
    
    @Environment(\.managedObjectContext) private var managedObjectContext
    @EnvironmentObject var authViewModel: AuthViewModel  // Access subscription status
    
    // MARK: - View State
    
    @State private var showConversationHistory = false
    @State private var keyboardHeight: CGFloat = 0
    @State private var scrollViewProxy: ScrollViewProxy?
    @State private var showEndChatAlert = false  // State for showing the end chat alert
    
    @StateObject private var vm: ChatViewModel
    
    // MARK: - Init
    
    init(openAIManager: OpenAIManager) {  
            _vm = StateObject(wrappedValue: ChatViewModel(openAIManager: openAIManager))
        }
    
    
    
    var body: some View {
        NavigationView {
            ZStack {
                
                // MARK: - Chat Area
                
                VStack {
                    if vm.selectedConversation != nil && !vm.messages.isEmpty {
                        ScrollView {
                            ScrollViewReader { proxy in
                                VStack {
                                    ForEach(vm.messages) { message in
                                        MessageView(message: message)
                                    }
                                    if vm.isLoading {
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
                                .onChange(of: vm.messages.count) { _, _ in
                                    DispatchQueue.main.asyncAfter(deadline: .now() + 0.1) {
                                        if let lastUserMessage = vm.messages.last(where: { $0.role == "user" }) {
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
                    
                    // MARK: - User Input Area
                    
                    VStack(spacing: 0) {
                        Rectangle()
                            .fill(Color("Burgundy"))
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
                        
                        CustomTextField(
                            placeholder: "Ask me anything wine related!",
                            text: $vm.inputText,
                            onSend: {
                                vm.sendMessage { messageID in
                                    // the VM tells us when to scroll
                                    scrollViewProxy?.scrollTo(messageID, anchor: .bottom)
                                }
                            }
                        )
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
                
                // MARK: - Toolbar + Modals
                
                .navigationBarTitle("Vino Chat", displayMode: .inline)
                .toolbar {
                    ToolbarItem(placement: .navigationBarLeading) {
                        if authViewModel.hasActiveSubscription {
                            Button(action: {
                                showConversationHistory.toggle()
                            }) {
                                Text("History")
                                    .foregroundColor(Color("Latte"))
                                    .bold()
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
                        primaryButton: .destructive(Text("Don't Save")) {
                            vm.endConversation(save: false)
                        },
                        secondaryButton: .default(Text("Save")) {
                            vm.endConversation(save: true)
                        }
                    )
                }
                .sheet(isPresented: $showConversationHistory) {
                    ConversationHistoryView()
                        .preferredColorScheme(.light)
                }
                
                .onAppear(perform: subscribeToKeyboardEvents)
              
                // MARK: - Overlay for Non-Subscribed Users
                
                if !authViewModel.hasActiveSubscription {
                    Color.black.opacity(0.3)
                        .edgesIgnoringSafeArea(.all)
                    
                    VStack(spacing: 20) {
                        Text("Pro Feature")
                            .font(.title)
                            .bold()
                            .foregroundColor(.burgundy)
                        
                        Text("Please upgrade to VinoBytes Pro to access our AI wine assistant.")
                            .font(.body)
                            .multilineTextAlignment(.center)
                            .padding(.horizontal)
                            .foregroundColor(.burgundy)
                        
                        Button(action: {
                            vm.startSubscriptionProcess()
                        }) {
                            Text("Subscribe")
                                .bold()
                                .foregroundColor(.burgundy)
                                .padding()
                                .frame(maxWidth: .infinity)
                                .background(Color("Latte"))
                                .cornerRadius(10)
                                .overlay(
                                    RoundedRectangle(cornerRadius: 10)
                                        .stroke(Color.burgundy, lineWidth: 2) // Adjust line width as needed
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
            .sheet(isPresented: $vm.isPaywallPresented) {
                PaywallView()
                    .environmentObject(authViewModel)
            }
        }
    }
    
    // MARK: - Keyboard Handling
    
    //Keeping this in view because it is driving UI
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
    
    //Keeping this in view because it is driving UI
    private func hideKeyboard() {
        UIApplication.shared.sendAction(#selector(UIResponder.resignFirstResponder), to: nil, from: nil, for: nil)
    }
}
