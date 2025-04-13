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

// MARK: - Custom Navigation Actions
enum CustomDashboardAction: String, CaseIterable, Identifiable {
    case addWineShortcut
    case aiHistoryShortcut
    case flashcardHistoryShortcut
    case grapesShortcut
    case glossaryShortcut
    case pairingsShortcut
    case regionsShortcut
    case wineflawsShortcut
 
    

    var id: String { rawValue }
    
    var displayName: String {
        switch self {
        case .addWineShortcut:
            return "Add Wine"
        case .aiHistoryShortcut:
            return "AI History"
        case .flashcardHistoryShortcut:
            return "Flashcard History"
        case .grapesShortcut:
            return "Grapes"
        case .glossaryShortcut:
            return "Glossary"
        case .pairingsShortcut:
            return "Pairings"
        case .regionsShortcut:
            return "Regions"
        case .wineflawsShortcut:
            return "Wine Flaws"
        
        }
    }
}

struct DashboardView: View {
    @Environment(\.managedObjectContext) private var context
    @State private var blogPosts: [BlogPost] = []
    @State private var wineFactOfTheWeek: String?
    @State private var showAlert = false
    @State private var alertMessage = ""
    @State private var showWhiteBackgroundView = false
    @State private var navigateToBlogPost = false  // Controls navigation to the blog post
    @State private var showWineFactSheet = false  // <— NEW STATE HERE
    @State private var isFactFetching = false
    @State private var showNameInputSheet = false
    @State private var animateGreeting = false
    @State private var firstButtonLongPressTriggered = false
    @State private var secondButtonLongPressTriggered = false
    @State private var showReassignTip = false
    
    @State private var newFactAvailable: Bool = UserDefaults.standard.bool(forKey: "NewWineFactAvailable")
    
    @EnvironmentObject var refreshNotifier: RefreshNotifier
    @EnvironmentObject var openAIManager: OpenAIManager  // Access from environment
    @EnvironmentObject var authViewModel: AuthViewModel  // To access subscription status
    @EnvironmentObject var userProfile: UserProfileViewModel // To access user first name
    
    @FetchRequest(
        sortDescriptors: [NSSortDescriptor(keyPath: \WineEntity.dateAdded, ascending: false)],
        animation: .default
    ) private var fetchedWines: FetchedResults<WineEntity>
    
    // Use @AppStorage to store the raw string value for each button
    @AppStorage("firstCustomAction") private var storedFirstCustomAction: String = ""
    @AppStorage("secondCustomAction") private var storedSecondCustomAction: String = ""
    
    // MARK: - New State for Custom Buttons
    // Using Optional to represent an unassigned state.
    
    @State private var showActionSheet: Bool = false
    @State private var activeButton: Int? = nil   // 1 for first, 2 for second
    @State private var navigateToFirstCustom: Bool = false
    @State private var navigateToSecondCustom: Bool = false
    
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
                        handleWineFactButtonTap()
                    }) {
                        HStack {
                            if isFactFetching {
                                ProgressView()
                                Text("Loading Wine Fact...")
                                    .font(.subheadline)
                            } else {
                                Text("Wine Fact of the Day")
                                    .font(.title3)
                                    .bold()
                                
                                if newFactAvailable {
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
                    .sheet(isPresented: $showWineFactSheet) {
                        if let fact = wineFactOfTheWeek {
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
                        if let latestPost = blogPosts.first {
                            
                            Button(action: {
                                navigateToBlogPost = true
                                // Only increment and maybe request review if the user has a subscription
                                if authViewModel.hasActiveSubscription {
                                    incrementBlogAccessCounterAndMaybeRequestReview()
                                }
                            }) {
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
                                BlogPostView(blogPost: latestPost, blogPosts: blogPosts)
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
                                // First custom button
                                Button(action: {
                                    // If long press was triggered, reset flag and cancel the tap action.
                                    if firstButtonLongPressTriggered {
                                        firstButtonLongPressTriggered = false
                                        return
                                    }
                                    
                                    // Otherwise, handle the tap normally.
                                    if firstCustomAction != nil {
                                        navigateToFirstCustom = true
                                    } else {
                                        activeButton = 1
                                        showActionSheet = true
                                    }
                                }) {
                                    VStack {
                                        if let action = firstCustomAction {
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
                                            // Set the flag and trigger the assignment dialog.
                                            firstButtonLongPressTriggered = true
                                            activeButton = 1
                                            showActionSheet = true
                                        }
                                )
                                
                                // Small pencil icon at the top
                                if firstCustomAction != nil {
                                    Image(systemName: "pencil")
                                        .foregroundColor(.maroon)
                                        .font(.system(size: 20))
                                        .background(Color.clear)
                                        .offset(x: -10, y: 10) // Adjust position
                                }
                            }
                            
                            
                            ZStack(alignment: .topTrailing) {
                                // Second custom button
                                Button(action: {
                                    // If long press was triggered, reset flag and cancel the tap action.
                                    if secondButtonLongPressTriggered {
                                        secondButtonLongPressTriggered = false
                                        return
                                    }
                                    
                                    // Otherwise, handle the tap normally.
                                    if secondCustomAction != nil {
                                        navigateToSecondCustom = true
                                    } else {
                                        activeButton = 2
                                        showActionSheet = true
                                    }
                                }) {
                                    VStack {
                                        if let action = secondCustomAction {
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
                                            // Set the flag and trigger the assignment dialog.
                                            secondButtonLongPressTriggered = true
                                            activeButton = 2
                                            showActionSheet = true
                                        }
                                )
                                // Small pencil icon at the top
                                if secondCustomAction != nil {
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
                            if fetchedWines.isEmpty {
                                Text("No recent wines added.")
                                    .foregroundColor(.gray)
                                    .padding(.horizontal)
                            } else {
                                ScrollView(.horizontal, showsIndicators: false) {
                                    HStack(spacing: 16) {
                                        ForEach(fetchedWines.prefix(4), id: \.self) { wine in
                                            RecentWineCard(wine: wine)
                                        }
                                    }
                                    // Force SwiftUI to rebuild if the names change
                                    .id(fetchedWines.map { $0.wineName ?? "" }.joined(separator: "-"))
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
                    NavigationLink(destination: AccountView(refreshNotifier: refreshNotifier)) {
                        Image(systemName: "gearshape.fill")
                            .imageScale(.large)
                            .foregroundColor(Color.latte)
                    }
                }
            }
            
            .onAppear {
                // Load the user profile from Core Data.
                userProfile.loadUserProfile(context: context)
                
                // If the firstName is empty, show the name input sheet.
                if userProfile.firstName.trimmingCharacters(in: .whitespacesAndNewlines).isEmpty {
                    showNameInputSheet = true
                }
                
                // Other onAppear actions...
                fetchContent()
                context.refreshAllObjects()
                print("DashboardView onAppear =>", fetchedWines.map(\.wineName))
                
                // 1) Reload the "newFactAvailable" flag each time
                    newFactAvailable = UserDefaults.standard.bool(forKey: "NewWineFactAvailable")

                    // 2) Check if the wine fact in Contentful has changed
                    checkForUpdatedFactOnLaunch()
            }
            .sheet(isPresented: $showNameInputSheet) {
                NameInputSheetView()
                    .environmentObject(userProfile)
                    .presentationDetents([.fraction(0.3)])
                    .presentationDragIndicator(.visible)
                    .preferredColorScheme(.light)
            }
            .alert(isPresented: $showAlert) {
                Alert(title: Text("Error"), message: Text(alertMessage), dismissButton: .default(Text("OK")))
            }
            // Confirmation dialog for custom button assignment.
            .confirmationDialog("Select Destination", isPresented: $showActionSheet) {
                ForEach(CustomDashboardAction.allCases.filter { action in
                    // If the action represents a locked feature, only show it if the user is subscribed.
                    if (action == .glossaryShortcut || action == .wineflawsShortcut || action == .aiHistoryShortcut) && !authViewModel.hasActiveSubscription {
                        return false
                    }
                    return true
                }) { action in
                    Button(action.displayName) {
                        if activeButton == 1 {
                            storedFirstCustomAction = action.rawValue
                        } else if activeButton == 2 {
                            storedSecondCustomAction = action.rawValue
                        }
                        activeButton = nil
                        
                        // Show the toast every time a button is changed.
                        showReassignTip = true
                        DispatchQueue.main.asyncAfter(deadline: .now() + 4) {
                            showReassignTip = false
                        }
                    }
                }
                Button("Cancel", role: .cancel) {
                    activeButton = nil
                }
            }
            .preferredColorScheme(.light) // Forces the dialog into light mode.
            
            
            // Navigation destinations for custom buttons.
            .navigationDestination(isPresented: $navigateToFirstCustom) {
                if let action = firstCustomAction {
                    destinationView(for: action)
                }
            }
            .navigationDestination(isPresented: $navigateToSecondCustom) {
                if let action = secondCustomAction {
                    destinationView(for: action)
                }
            }
            .overlay(
                VStack {
                    if showReassignTip {
                        Text("Button Assigned Successfully!\nHold the button to change it anytime.")
                            .font(.headline)
                            .foregroundColor(Color.black)
                            .multilineTextAlignment(.center)
                            .lineLimit(2)
                            .padding()
                            .background(Color("LightLatte"))
                            .cornerRadius(10)
                            .shadow(color: Color.black.opacity(0.7), radius: 3, x: 0, y: 2)
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
                       handleWineFactButtonTap()
                   }
               }
           }

    
    
    // Computed properties to work with the enum
        private var firstCustomAction: CustomDashboardAction? {
            get { CustomDashboardAction(rawValue: storedFirstCustomAction) }
            set { storedFirstCustomAction = newValue?.rawValue ?? "" }
        }
        
        private var secondCustomAction: CustomDashboardAction? {
            get { CustomDashboardAction(rawValue: storedSecondCustomAction) }
            set { storedSecondCustomAction = newValue?.rawValue ?? "" }
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
    
    // MARK: - Button Tap Handling
    private func handleWineFactButtonTap() {
        // Remove the badge indicator as soon as the user taps
           newFactAvailable = false
           UserDefaults.standard.set(false, forKey: "NewWineFactAvailable")
        
        // If we already have the fact, show the sheet immediately
        if let _ = wineFactOfTheWeek {
            showWineFactSheet = true
        } else {
            // Otherwise, fetch on demand
            isFactFetching = true
            ContentfulManager.shared.fetchWineFact { fact, error in
                DispatchQueue.main.async {
                    self.isFactFetching = false
                    if let fact = fact {
                        // 1) Store it immediately so the fallback doesn't consider it "new" next time
                                    UserDefaults.standard.set(fact, forKey: "LastWineFact")
                                    
                                    // 2) Present the sheet
                                    self.wineFactOfTheWeek = fact
                                    self.showWineFactSheet = true
                                } else {
                                    self.alertMessage = error?.localizedDescription ?? "Unknown error"
                                    self.showAlert = true
                                }
                            }
                        }
        }
    }
    
    
    private func fetchContent() {
        ContentfulManager.shared.fetchBlogPosts { posts, error in
            if let posts = posts {
                DispatchQueue.main.async {
                    self.blogPosts = posts
                }
                print("Fetched \(posts.count) posts")
            } else if let error = error {
                DispatchQueue.main.async {
                    self.alertMessage = error.localizedDescription
                    self.showAlert = true
                }
                print("Error fetching posts: \(error.localizedDescription)")
            }
        }
    }
    
    private func incrementBlogAccessCounterAndMaybeRequestReview() {
        let defaults = UserDefaults.standard
        let blogAccessCountKey = "blogAccessCount"
        
        let newCount = defaults.integer(forKey: blogAccessCountKey) + 1
        defaults.setValue(newCount, forKey: blogAccessCountKey)
        
        // Define your milestones
        let milestones = [5, 20, 50, 100]
        
        if milestones.contains(newCount) {
            ReviewRequestHelper.requestReviewIfAppropriate()
        }
    }
    
    private func checkForUpdatedFactOnLaunch() {
        ContentfulManager.shared.fetchWineFact { fact, error in
            guard let fetchedFact = fact, error == nil else { return }
            
            // Compare with the last fact text we stored previously
            let lastKnownFact = UserDefaults.standard.string(forKey: "LastWineFact") ?? ""
            if fetchedFact != lastKnownFact {
                // It's brand-new
                UserDefaults.standard.set(fetchedFact, forKey: "LastWineFact")
                UserDefaults.standard.set(true, forKey: "NewWineFactAvailable")
                newFactAvailable = true
            }
        }
    }
}


#if DEBUG
import SwiftUI
import CoreData

struct DashboardView_Previews: PreviewProvider {
    static var previewContext: NSManagedObjectContext = {
        let controller = PersistenceController(inMemory: true)
        let context = controller.container.viewContext
        if let entityDescription = NSEntityDescription.entity(forEntityName: "WineEntity", in: context) {
            let sampleWine = NSManagedObject(entity: entityDescription, insertInto: context)
            sampleWine.setValue(Date(), forKey: "dateAdded")
        }
        do {
            try context.save()
        } catch {
            print("Error saving preview context: \(error)")
        }
        return context
    }()
    
    static var previews: some View {
        let openAIManager = OpenAIManager(context: previewContext)
        let authViewModel = AuthViewModel()
        let refreshNotifier = RefreshNotifier()
        let userProfileViewModel = UserProfileViewModel()
        
        return NavigationView {
            DashboardView()
                .environment(\.managedObjectContext, previewContext)
                .environmentObject(openAIManager)
                .environmentObject(authViewModel)
                .environmentObject(refreshNotifier)
                .environmentObject(userProfileViewModel)
        }
    }
}
#endif

