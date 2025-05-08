//
//  DashboardView.swift
//  VinoDecks
//
//  Created by Logan Rausch on 3/28/24.
//

import SwiftUI
import CoreData
import RevenueCat
import RevenueCatUI

struct DashboardView: View {
    
    @StateObject private var viewModel = DashboardViewModel()
    
    @State private var showWhiteBackgroundView = false
    @State private var navigateToBlogPost = false  // Controls navigation to the blog post
    @State private var showNameInputSheet = false
    @State private var animateGreeting = false
    @State private var navigateToFirstCustom = false
    @State private var navigateToSecondCustom = false
    
    @EnvironmentObject var refreshNotifier: RefreshNotifier
    @EnvironmentObject var openAIManager: OpenAIManager  // Access from environment
    @EnvironmentObject var authViewModel: AuthViewModel  // To access subscription status
    @EnvironmentObject var userProfile: UserProfileViewModel // To access user first name
    
    @Environment(\.managedObjectContext) private var context
    
    
    var body: some View {
        NavigationStack {
            GeometryReader { geometry in
                let buttonHeight = geometry.size.height * 0.135
                
                VStack(spacing: 16) {
                    
                    // If no name is set, add extra vertical space.
                    if userProfile.firstName.isEmpty {
                        Spacer().frame(height: 10) // Adjust height as needed
                    } else {
                        // Display the greeting if the first name is available.
                        Text("Hi, \(userProfile.firstName)!")
                            .font(.title)
                            .fontWeight(.bold)
                            .foregroundColor(.black)
                            .opacity(animateGreeting ? 1 : 0)
                            .onAppear {
                                withAnimation(.easeIn(duration: 0.6)) {
                                    animateGreeting = true
                                }
                            }
                    }
                    
                    HStack {
                        Text("You studied")
                        Text("\(StudySessionManager.shared.flashcardsStudiedThisWeek)")
                            .font(.title3)
                            .bold()
                            .foregroundColor(.maroon) // Optional to match your theme
                        Text("flashcards this week.")
                    }
                    .font(.title3)
                    .padding(.bottom, 8)
                    
                    
                    ZStack(alignment: .topTrailing) {
                        Button(action: {
                            viewModel.handleWineFactTap()
                        }) {
                            HStack {
                                if viewModel.isFactFetching {
                                    ProgressView()
                                    Text("Loading Wine Fact...")
                                        .font(.subheadline)
                                } else {
                                    Text("Wine Fact of the Day")
                                        .font(.title3)
                                        .bold()
                                    
                                    if viewModel.newFactAvailable {
                                        PulsingWineGlass() // Place the wine glass here
                                            .frame(width: 24, height: 24) // Adjust size as needed
                                    }
                                }
                            }
                            .foregroundColor(.black)
                            .frame(maxWidth: .infinity)
                            .padding()
                            .background(Color("Latte"))
                            .cornerRadius(10)
                        }
                        .overlay(
                            RoundedRectangle(cornerRadius: 10)
                                .stroke(Color("LightMaroon"), lineWidth: 2.4)
                        )
                        .shadow(radius: 5)
                        // Present sheet AFTER the fact is loaded
                        .sheet(isPresented: $viewModel.showWineFactSheet) {
                            if let fact = viewModel.wineFactOfTheWeek {
                                WineFactSheetView(fact: fact)
                                    .presentationDetents([.medium, .large])
                                    .presentationDragIndicator(.visible)
                            } else {
                                ProgressView("Loading Wine Fact...")
                                    .presentationDetents([.medium, .large])
                                    .presentationDragIndicator(.visible)
                            }
                        }
                    }
                    .padding(.bottom)
                    .padding(.horizontal)
                    
                    
                    HStack(spacing: 30) {
                        
                        
                        Button(action: {
                            showWhiteBackgroundView.toggle()
                        }) {
                            Text("Digital Napkin")
                                .bold()
                                .foregroundColor(.black)
                                .frame(maxWidth: .infinity)
                                .padding(5)
                                .frame(height: buttonHeight)
                                .background(Color.lightLatte)
                                .cornerRadius(10)
                                .overlay(
                                    RoundedRectangle(cornerRadius: 10)
                                        .stroke(Color("LightMaroon"), lineWidth: 2.4)
                                )
                            
                                .shadow(color: .gray, radius: 5)
                        }
                        .sheet(isPresented: $showWhiteBackgroundView) {
                            WhiteBackgroundView()
                        }
                        
                        
                        // Weekly Blog Post Button
                        if let latestPost = viewModel.blogPosts.first {
                            
                            Button {
                                // 1) Tell the VM to handle the counter & review prompt
                                viewModel.handleLatestBlogTap(
                                    isSubscribed: authViewModel.hasActiveSubscription
                                )
                                // 2) Then navigate
                                navigateToBlogPost = true
                            } label: {
                                HStack {
                                    Spacer()
                                    Text("Latest Wine Byte")
                                        .bold()
                                        .foregroundColor(.black)
                                    Spacer()
                                    
                                }
                                .frame(maxWidth: .infinity)
                                .padding(5)
                                .frame(height: buttonHeight)
                                .background(Color.lightLatte)
                                .cornerRadius(10)
                                .overlay(
                                    RoundedRectangle(cornerRadius: 10)
                                        .stroke(Color("LightMaroon"), lineWidth: 2.4)
                                )
                                .shadow(color: .gray, radius: 5)
                            }
                            .navigationDestination(isPresented: $navigateToBlogPost) {
                                BlogPostView(blogPost: latestPost, blogPosts: viewModel.blogPosts)
                            }
                        } else {
                            Text("Loading Blog Post...")
                                .bold()
                                .foregroundColor(.gray)
                                .frame(maxWidth: .infinity)
                                .frame(height: buttonHeight)
                                .background(Color.lightLatte)
                                .cornerRadius(10)
                                .overlay(
                                    RoundedRectangle(cornerRadius: 10)
                                        .stroke(Color("LightMaroon"), lineWidth: 2.4)
                                )
                                .shadow(color: .gray, radius: 5)
                        }
                        
                    }
                    .padding(.horizontal)
                    .padding(.bottom)
                    
                    
                    
                    
                    // MARK: - New Assignable Buttons Section
                    if geometry.size.height >= 631 {
                        
                        HStack(spacing: 30) {
                            ZStack(alignment: .topTrailing) {
                                Button {
                                    if viewModel.firstCustomAction != nil {
                                        navigateToFirstCustom = true
                                    } else {
                                        viewModel.beginAssign(button: 1)
                                    }
                                } label: {
                                    VStack {
                                        if let action = viewModel.firstCustomAction {
                                            Text(action.displayName)
                                                .foregroundStyle(Color.black)
                                                .bold()
                                        } else {
                                            VStack {
                                                Image(systemName: "pencil")
                                                    .resizable()
                                                    .scaledToFit()
                                                    .foregroundStyle(Color.maroon)
                                                    .frame(width: 30, height: 30)
                                                Text("Unassigned")
                                                    .font(.headline)
                                                    .foregroundColor(.black)
                                            }
                                        }
                                    }
                                    .frame(maxWidth: .infinity)
                                    .padding()
                                    .frame(height: buttonHeight)
                                    .background(Color.lightLatte)
                                    .cornerRadius(10)
                                    .overlay(
                                        RoundedRectangle(cornerRadius: 10)
                                            .stroke(Color("LightMaroon"), lineWidth: 2.4)
                                    )
                                    .shadow(color: .gray, radius: 5)
                                }
                                
                                .simultaneousGesture(
                                    LongPressGesture(minimumDuration: 1.0)
                                        .onEnded { _ in
                                            viewModel.beginAssign(button: 1)
                                        }
                                )
                                if viewModel.firstCustomAction != nil {
                                    Image(systemName: "pencil")
                                        .foregroundColor(.maroon)
                                        .font(.system(size: 20))
                                        .background(Color.clear)
                                        .offset(x: -10, y: 10) // Adjust position
                                }
                            }
                            
                            
                            ZStack(alignment: .topTrailing) {
                                Button {
                                    if viewModel.secondCustomAction != nil {
                                        navigateToSecondCustom = true
                                    } else {
                                        viewModel.beginAssign(button: 2)
                                    }
                                } label: {
                                    VStack {
                                        if let action = viewModel.secondCustomAction {
                                            Text(action.displayName)
                                                .foregroundStyle(Color.black)
                                                .bold()
                                        } else {
                                            VStack {
                                                Image(systemName: "pencil")
                                                    .resizable()
                                                    .scaledToFit()
                                                    .foregroundStyle(Color.maroon)
                                                    .frame(width: 30, height: 30)
                                                Text("Unassigned")
                                                    .font(.headline)
                                                    .foregroundColor(.black)
                                            }
                                        }
                                    }
                                    .frame(maxWidth: .infinity)
                                    .padding()
                                    .frame(height: buttonHeight)
                                    .background(Color.lightLatte)
                                    .cornerRadius(10)
                                    .overlay(
                                        RoundedRectangle(cornerRadius: 10)
                                            .stroke(Color("LightMaroon"), lineWidth: 2.4)
                                    )
                                    .shadow(color: .gray, radius: 5)
                                }
                                
                                .simultaneousGesture(
                                    LongPressGesture(minimumDuration: 1.0)
                                        .onEnded { _ in
                                            viewModel.beginAssign(button: 2)
                                        }
                                )
                                if viewModel.secondCustomAction != nil {
                                    Image(systemName: "pencil")
                                        .foregroundColor(.maroon)
                                        .font(.system(size: 20))
                                        .background(Color.clear)
                                        .offset(x: -10, y: 10) // Adjust position
                                }
                            }
                        }
                        .padding(.horizontal)
                        .padding(.bottom)
                    }
                    
                    
                    
                    // Recent Wines Carousel Section
                    VStack(alignment: .center, spacing: 8) {
                        Text("Your Recent Wines")
                            .font(.title3)
                            .bold()
                            .padding(.horizontal)
                        
                        
                        
                        // Wrap the content in a fixed-height container
                        Group {
                            if viewModel.recentWines.isEmpty {
                                Text("No recent wines added.")
                                    .foregroundColor(.gray)
                                    .padding(.horizontal)
                            } else {
                                ScrollView(.horizontal, showsIndicators: false) {
                                    HStack(spacing: 16) {
                                        ForEach(viewModel.recentWines, id: \.objectID) { wine in
                                            RecentWineCard(wine: wine)
                                        }
                                    }
                                    .padding(.horizontal)
                                }
                            }
                        }
                        .frame(height: 145)  // Fixed size regardless of content
                        .frame(maxWidth: .infinity)
                        .padding(.top)
                        .padding(.bottom)
                        .background(Color.white)
                        .cornerRadius(10)
                        .overlay(
                            RoundedRectangle(cornerRadius: 10)
                                .stroke(Color("LightMaroon"), lineWidth: 2.5)
                        )
                        
                        .padding(.horizontal)
                        .padding(.vertical, 12)
                        
                    }
                    
                    Spacer()
                    
                }
                .animation(nil, value: UUID()) // This disables implicit animations on this container.
            }
            .padding(20)
            .navigationBarTitle("Dashboard", displayMode: .inline)
            .toolbar {
                ToolbarItem(placement: .navigationBarTrailing) {
                    NavigationLink(
                        destination: AccountView(
                            refreshNotifier: refreshNotifier,
                            context:        context,
                            openAI:         openAIManager
                        )
                    ) {
                        Image(systemName: "gearshape.fill")
                            .imageScale(.large)
                            .foregroundColor(Color.latte)
                    }
                }
            }
            
            .onAppear {
                // 1️⃣ Load the profile
                userProfile.loadUserProfile(context: context)
                
                // 2️⃣ If they haven’t set a name yet, show the sheet
                if userProfile.firstName.trimmingCharacters(in: .whitespacesAndNewlines).isEmpty {
                    showNameInputSheet = true
                }
                
                // 3️⃣ Kick off *all* Dashboard startup work in one go
                viewModel.start(context: context)
                
                
            }
            .sheet(isPresented: $showNameInputSheet) {
                NameInputSheetView()
                    .environmentObject(userProfile)
                    .presentationDetents([.fraction(0.3)])
                    .presentationDragIndicator(.visible)
                    .preferredColorScheme(.light)
            }
            .alert(
                "Error",
                isPresented: Binding(
                    get:  { viewModel.alertMessage != nil },
                    set:  { _ in viewModel.alertMessage = nil }
                )
            ) {
                Button("OK", role: .cancel) {}
            } message: {
                Text(viewModel.alertMessage ?? "")
            }
            
            // Confirmation dialog for custom button assignment.
            .confirmationDialog(
                "Select Destination",
                isPresented: $viewModel.showActionSheet
            ) {
                ForEach(
                    CustomDashboardAction.allCases.filter { action in
                        // only show locked features when subscribed
                        if (action == .glossaryShortcut
                            || action == .wineflawsShortcut
                            || action == .aiHistoryShortcut)
                            && !authViewModel.hasActiveSubscription {
                            return false
                        }
                        return true
                    }
                ) { action in
                    Button(action.displayName) {
                        viewModel.assignAction(action)
                    }
                }
                
                Button("Cancel", role: .cancel) {
                    viewModel.showActionSheet = false
                    viewModel.activeButton    = nil
                }
            }
            .preferredColorScheme(.light) // Forces the dialog into light mode.
            
            
            // Navigation destinations for custom buttons.
            .navigationDestination(isPresented: $navigateToFirstCustom) {
                if let action = viewModel.firstCustomAction {
                    destinationView(for: action)
                }
            }
            .navigationDestination(isPresented: $navigateToSecondCustom) {
                if let action = viewModel.secondCustomAction {
                    destinationView(for: action)
                }
            }
            .overlay(
                VStack {
                    if viewModel.showReassignTip {
                        Text("Button Assigned Successfully!\nHold the button to change it anytime.")
                            .font(.headline)
                            .multilineTextAlignment(.center)
                            .padding()
                            .background(Color("LightLatte"))
                            .cornerRadius(10)
                            .shadow(radius: 3)
                            .transition(.opacity)
                    }
                }
                    .padding(.horizontal)
                    .padding(.bottom, 40),
                alignment: .bottom
            )
        }
        // Listen for deep link notifications to trigger the wine fact sheet.
        .onReceive(NotificationCenter.default.publisher(for: .deepLink)) { notification in
            if let destination = notification.userInfo?["destination"] as? String,
               destination == "wineFact" {
                viewModel.handleWineFactTap()
            }
        }
    }
    
    
    
    
    
    // MARK: - Navigation Destination Builder
    @ViewBuilder
    private func destinationView(for action: CustomDashboardAction) -> some View {
        switch action {
        case .addWineShortcut:
            WineFormView()
        case .aiHistoryShortcut:
            ConversationHistoryView()
        case .flashcardHistoryShortcut:
            SessionListView()
        case .grapesShortcut:
            GrapeListView()
        case .glossaryShortcut:
            WineGlossaryListView()
        case .pairingsShortcut:
            FoodWinePairingsListView()
        case .regionsShortcut:
            RegionListView()
        case .wineflawsShortcut:
            WineFlawListView()
            
        }
    }
}
