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
    @Environment(\.managedObjectContext) private var context
    @State private var blogPosts: [BlogPost] = []
    @State private var wineFactOfTheWeek: String?
    @State private var showAlert = false
    @State private var alertMessage = ""
    @State private var showWhiteBackgroundView = false
    @State private var recentWines: [WineEntity] = []
    @State private var isPaywallPresented = false  // Controls the presentation of the paywall
    @State private var navigateToBlogPost = false  // Controls navigation to the blog post
    @ObservedObject var refreshNotifier: RefreshNotifier  // Add this line
    @EnvironmentObject var openAIManager: OpenAIManager  // Access from environment
    @EnvironmentObject var authViewModel: AuthViewModel  // To access subscription status

    
    
    var body: some View {
        
        NavigationStack {
            
            VStack(alignment: .center, spacing: 16) {
                
                VStack {
                    Text("Wine Fact of the Week")
                        .font(.title3)
                        .bold()
                        .minimumScaleFactor(0.8)
                    if let fact = wineFactOfTheWeek {
                        Text(fact)
                            .multilineTextAlignment(.center)
                            .minimumScaleFactor(0.8)
                            .padding(.horizontal)
                            .padding(.vertical, 6)
                    } else {
                        Text("Loading wine fact...")
                            .multilineTextAlignment(.center)
                            .padding(.horizontal)
                            .padding(.vertical, 6)
                    }
                }
                .frame(maxWidth: .infinity)
                .frame(maxHeight: 170)
                .padding(.top)
                .padding(.horizontal)
                .padding(.bottom, 5)
                .background(
                    // Apply the background before padding so it matches the overlay size
                    Color.lightLatte
                        .overlay(
                            GeometryReader { geometry in
                                // Circles at each corner
                                Group {
                                    Circle().fill(Color("Maroon"))
                                        .frame(width: 7, height: 7)
                                        .position(x: 15, y: 15) // Top-left corner
                                    Circle().fill(Color("Maroon"))
                                        .frame(width: 7, height: 7)
                                        .position(x: geometry.size.width - 15, y: 15) // Top-right corner
                                    Circle().fill(Color("Maroon"))
                                        .frame(width: 7, height: 7)
                                        .position(x: 15, y: geometry.size.height - 15) // Bottom-left corner
                                    Circle().fill(Color("Maroon"))
                                        .frame(width: 7, height: 7)
                                        .position(x: geometry.size.width - 15, y: geometry.size.height - 15) // Bottom-right corner
                                }
                            }
                        )
                )
                .cornerRadius(10)
                .overlay(
                    RoundedRectangle(cornerRadius: 10)
                        .stroke(Color("LightMaroon"), lineWidth: 1.5)
                )
                .padding()
                .padding(.top)
                
                
                
                HStack(spacing: 16) {
                    // Flashcard Progress Button
                    Button(action: {
                        showWhiteBackgroundView.toggle()
                    }) {
                        Text("Digital Napkin Mode")
                            .bold()
                            .foregroundColor(.black)
                            .frame(maxWidth: .infinity)
                            .padding()
                            .padding(.top)
                            .padding(.bottom)
                            .background(Color.lightLatte)
                            .cornerRadius(10)
                            .overlay(
                                RoundedRectangle(cornerRadius: 10)
                                    .stroke(Color("LightMaroon"), lineWidth: 2.4)
                            )
                        
                            .shadow(color: .black.opacity(0.5), radius: 5)
                    }
                    .sheet(isPresented: $showWhiteBackgroundView) {
                        WhiteBackgroundView()
                    }
                    Spacer()
                    
                    // Weekly Blog Post Button
                    if let latestPost = blogPosts.first {
                        let isLocked = !authViewModel.hasActiveSubscription

                        Button(action: {
                            if authViewModel.hasActiveSubscription {
                                // Navigate to BlogPostView
                                navigateToBlogPost = true
                            } else {
                                // Show the paywall
                                startSubscriptionProcess()
                            }
                        }) {
                            HStack {
                                if isLocked {
                                    // Left-aligned text with lock icon on the right
                                    Text("Latest Wine Byte")
                                        .bold()
                                        .foregroundColor(.black.opacity(0.6))
                                    Spacer()
                                    Image(systemName: "lock.fill")
                                        .foregroundColor(.lightMaroon)
                                } else {
                                    // Centered text when not locked
                                    Spacer()
                                    Text("Latest Wine Byte")
                                        .bold()
                                        .foregroundColor(.black)
                                    Spacer()
                                }
                            }
                            .frame(maxWidth: .infinity)
                            .padding()
                            .padding(.top)
                            .padding(.bottom)
                            .background(
                                isLocked ? Color.gray.opacity(0.2) : Color.lightLatte
                            )
                            .cornerRadius(10)
                            .overlay(
                                RoundedRectangle(cornerRadius: 10)
                                    .stroke(
                                        isLocked ? Color.gray.opacity(0.5) : Color("LightMaroon"),
                                        lineWidth: 2.4
                                    )
                            )
                            .shadow(color: .black.opacity(0.6), radius: 6)
                        }
                        .navigationDestination(isPresented: $navigateToBlogPost) {
                            BlogPostView(blogPost: latestPost, blogPosts: blogPosts)
                        }
                    } else {
                        Text("Loading Blog Post...")
                            .bold()
                            .foregroundColor(.gray)
                            .frame(maxWidth: .infinity)
                            .padding()
                            .padding(.top)
                            .padding(.bottom)
                            .background(Color.lightLatte)
                            .cornerRadius(10)
                            .overlay(
                                RoundedRectangle(cornerRadius: 10)
                                    .stroke(Color("LightMaroon"), lineWidth: 2.4)
                            )
                            .shadow(color: .black.opacity(0.6), radius: 6)
                    }

                                   }
                                   .padding(.horizontal)
                
                // Recent Wines Section
                VStack(alignment: .center, spacing: 8) {
                    Text("Recently Added Wines")
                        .font(.headline)
                        .padding(.bottom, 2)
                        .padding(.top, 2)
                    
                    if recentWines.isEmpty {
                        Text("No recent wines added.")
                            .foregroundColor(.gray)
                    } else {
                        ScrollView(showsIndicators: false) {
                            VStack(spacing: 8) {
                                ForEach(recentWines, id: \.self) { wine in
                                    NavigationLink(destination: WineDetailView(wineEntity: wine)) {
                                        HStack {
                                            // Wine Image
                                            if let imageData = wine.imageData, let uiImage = UIImage(data: imageData) {
                                                Image(uiImage: uiImage)
                                                    .resizable()
                                                    .scaledToFill()
                                                    .frame(width: 45, height: 45)
                                                    .clipShape(RoundedRectangle(cornerRadius: 5))
                                            } else {
                                                Rectangle()
                                                    .fill(Color.gray.opacity(0.3))
                                                    .frame(width: 45, height: 45)
                                                    .clipShape(RoundedRectangle(cornerRadius: 5))
                                                    .overlay(
                                                        Image(systemName: "wineglass")
                                                            .foregroundColor(.white)
                                                    )
                                            }
                                            
                                            VStack(alignment: .leading) {
                                                Text(wine.wineName ?? "Unnamed Wine")
                                                    .font(.subheadline)
                                                    .bold()
                                                Text("\(wine.producer ?? "Unknown Producer"), \(wine.vintage ?? "Unknown Vintage")")
                                                    .font(.caption)
                                                    .foregroundColor(.black.opacity(0.7))
                                            }
                                            
                                            Spacer()
                                            
                                            Image(systemName: "chevron.right")
                                                .foregroundColor(.gray)
                                        }
                                        .padding(.vertical, 5)
                                        // Make the entire HStack tappable
                                        .frame(maxWidth: .infinity, alignment: .leading)
                                        .contentShape(Rectangle())
                                    }
                                    .buttonStyle(PlainButtonStyle())
                                    Divider()
                                }
                            }
                            .padding(.horizontal)
                        }
                    }
                }
                .frame(maxWidth: .infinity)
                .frame(maxHeight: 318)
                .padding(.top)
                .padding(.horizontal)
                .padding(.bottom, 5)
                .background(Color.lightLatte)
                .cornerRadius(10)
                .overlay(
                    RoundedRectangle(cornerRadius: 10)
                        .stroke(Color("LightMaroon"), lineWidth: 1.5)
                )
                .padding(.top)
                .padding(.horizontal)
                
                
                
                Spacer()
                
            }
            .padding(.horizontal, 10)
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
                fetchContent()
                fetchRecentWines()  // Manually fetch recent wines
            }
            
            .alert(isPresented: $showAlert) { // Add this line
                Alert(title: Text("Error"), message: Text(alertMessage), dismissButton: .default(Text("OK")))
            }
            // Present the PaywallView when needed
                       .sheet(isPresented: $isPaywallPresented) {
                           PaywallView()
                               .environmentObject(authViewModel)
            }
        }
    }
    
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
    
    private func fetchRecentWines() {
        let request: NSFetchRequest<WineEntity> = WineEntity.fetchRequest()
        request.sortDescriptors = [NSSortDescriptor(keyPath: \WineEntity.dateAdded, ascending: false)]
        request.fetchLimit = 4
        
        do {
            let result = try context.fetch(request)
            DispatchQueue.main.async {
                self.recentWines = result
            }
        } catch {
            print("Failed to fetch recent wines: \(error)")
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
        
        ContentfulManager.shared.fetchWineFact { fact, error in
            if let fact = fact {
                DispatchQueue.main.async {
                    self.wineFactOfTheWeek = fact
                }
            } else {
                DispatchQueue.main.async {
                    self.alertMessage = error?.localizedDescription ?? "Unknown error"
                    self.showAlert = true
                }
                print("Error fetching wine fact: \(error?.localizedDescription ?? "Unknown error")")
            }
        }
    }
}


