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
    @Published var isFactFetching = false
    
    //Alert
    @Published var alertMessage: String?
    
    //Wines Carousel
    @Published var recentWines: [WineEntity] = []
    
    
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
                } else {
                    // Surface error (you can bind this to an Alert)
                    self.alertMessage = error?.localizedDescription
                }
            }
        }
    }
    
    func checkForUpdatedFactOnLaunch() {
        ContentfulManager.shared.fetchWineFact { [weak self] fact, _ in
            guard let self = self, let fact = fact else { return }
            DispatchQueue.main.async {
                self.wineFactOfTheWeek = fact
            }
        }
    }
}
