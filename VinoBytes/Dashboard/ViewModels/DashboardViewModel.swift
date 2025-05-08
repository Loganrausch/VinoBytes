//
//  DashboardViewModel.swift
//  VinoBytes
//
//  Created by Logan Rausch on 5/4/25.

import Foundation
import CoreData

final class DashboardViewModel: ObservableObject {
    
    //Blog Post
    @Published var blogPosts: [BlogPost] = []
    
    // Wine Fact
    @Published var wineFactOfTheWeek: String?
    @Published var showWineFactSheet = false
    @Published var isFactFetching = false
    @Published var newFactAvailable: Bool = UserDefaults.standard.bool(forKey: "NewWineFactAvailable")
    
    //Alert
    @Published var alertMessage: String?
    
    //Button Assignment
    @Published var showActionSheet: Bool = false
    @Published var activeButton: Int?     = nil
    @Published var showReassignTip: Bool  = false
    
    @Published var firstCustomAction: CustomDashboardAction? {
        didSet {
            let raw = firstCustomAction?.rawValue ?? ""
            UserDefaults.standard.set(raw, forKey: "firstCustomAction")
        }
    }
    @Published var secondCustomAction: CustomDashboardAction? {
        didSet {
            let raw = secondCustomAction?.rawValue ?? ""
            UserDefaults.standard.set(raw, forKey: "secondCustomAction")
        }
    }
    
    //Wines Carousel
    @Published var recentWines: [WineEntity] = []
    
    init() {
        let raw1 = UserDefaults.standard.string(forKey: "firstCustomAction") ?? ""
        firstCustomAction  = CustomDashboardAction(rawValue: raw1)
        let raw2 = UserDefaults.standard.string(forKey: "secondCustomAction") ?? ""
        secondCustomAction = CustomDashboardAction(rawValue: raw2)
    }
    
    
    /// Call this to load everything at once
     func start(context: NSManagedObjectContext) {
       fetchBlogPosts()
       checkForUpdatedFactOnLaunch()
       fetchRecentWines(in: context)
     }
    
    /// Fetch the 4 most-recent wines from Core Data
     private func fetchRecentWines(in context: NSManagedObjectContext) {
       let req: NSFetchRequest<WineEntity> = WineEntity.fetchRequest()
       req.sortDescriptors = [NSSortDescriptor(keyPath: \WineEntity.dateAdded, ascending: false)]
       req.fetchLimit = 4
       do {
         recentWines = try context.fetch(req)
       } catch {
         print("Failed to fetch recent wines:", error)
       }
     }

    // 2. Fetch blog posts from the network
    func fetchBlogPosts() {
        ContentfulManager.shared.fetchBlogPosts { [weak self] posts, error in
            DispatchQueue.main.async {
                if let posts = posts {
                    self?.blogPosts = posts
                } else {
                    // For now, you could log or handle errors here
                    print("Error fetching posts:", error?.localizedDescription ?? "-")
                }
            }
        }
    }
    
    // Call when the user taps “Latest Wine Byte”
       func handleLatestBlogTap(isSubscribed: Bool) {
           guard isSubscribed else { return }
           let key = "blogAccessCount"
           let newCount = UserDefaults.standard.integer(forKey: key) + 1
           UserDefaults.standard.set(newCount, forKey: key)

           let milestones = [5, 20, 50, 100]
           if milestones.contains(newCount) {
               ReviewRequestHelper.requestReviewIfAppropriate()
           }
       }
    
    // 1) Called when the user taps the “Wine Fact” button
    func handleWineFactTap() {
        // Clear the badge indicator immediately
        newFactAvailable = false
        UserDefaults.standard.set(false, forKey: "NewWineFactAvailable")
        
        // If we already fetched it, just show the sheet…
        if wineFactOfTheWeek != nil {
            showWineFactSheet = true
        }
        // …otherwise start the network request
        else {
            fetchWineFact()
        }
    }
    
    // 2) Actually performs the network call and updates state
    private func fetchWineFact() {
        isFactFetching = true
        ContentfulManager.shared.fetchWineFact { [weak self] fact, error in
            DispatchQueue.main.async {
                guard let self = self else { return }
                self.isFactFetching = false
                
                if let fact = fact {
                    // Save for next time
                    UserDefaults.standard.set(fact, forKey: "LastWineFact")
                    // Publish & display
                    self.wineFactOfTheWeek = fact
                    self.showWineFactSheet  = true
                } else {
                    // Surface error (you can bind this to an Alert)
                    self.alertMessage = error?.localizedDescription
                }
            }
        }
    }
    
    //Checks the wine fact on launch to display correct one
    func checkForUpdatedFactOnLaunch() {
        ContentfulManager.shared.fetchWineFact { [weak self] fact, _ in
            guard
                let self = self,
                let fact = fact,
                fact != UserDefaults.standard.string(forKey: "LastWineFact")
            else { return }
            
            // Update UserDefaults
            UserDefaults.standard.set(fact, forKey: "LastWineFact")
            UserDefaults.standard.set(true, forKey: "NewWineFactAvailable")
            
            // Explicitly refer to self
            DispatchQueue.main.async {
                self.newFactAvailable = true
            }
        }
    }
    // Call when the user taps or long-presses to begin assignment
    func beginAssign(button: Int) {
        activeButton    = button
        showActionSheet = true
    }

    // Call when the user picks an action in the dialog
    func assignAction(_ action: CustomDashboardAction) {
        guard let btn = activeButton else { return }
        if btn == 1 {
            firstCustomAction = action
        } else {
            secondCustomAction = action
        }
        // reset and show tip
        activeButton    = nil
        showActionSheet = false
        showReassignTip = true

        // auto dismiss tip
        DispatchQueue.main.asyncAfter(deadline: .now() + 4) {
            self.showReassignTip = false
        }
    }
}
