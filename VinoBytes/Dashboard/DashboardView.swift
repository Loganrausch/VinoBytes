//
//  DashboardView.swift
//  VinoDecks
//
//  Created by Logan Rausch on 3/28/24.
//

import SwiftUI
import CoreData

struct DashboardView: View {
    @Environment(\.managedObjectContext) private var context
    @State private var blogPosts: [BlogPost] = []
    @State private var flashcardProgress: [String: Int] = [:]
    @State private var wineFactOfTheWeek: String?
    @State private var isFlashcardProgressSheetPresented = false
    @State private var isWhiteDisplaySheetPresented = false
    @State private var showAlert = false
    @State private var alertMessage = ""
    @State private var recentWines: [WineEntity] = []
    @ObservedObject var refreshNotifier: RefreshNotifier  // Add this line
    @EnvironmentObject var openAIManager: OpenAIManager  // Access from environment
    

    // List of all regions
    let allRegions = ["Argentina", "Australia", "Austria", "Chile", "France", "Germany", "Greece", "Hungary", "Italy", "New Zealand", "Portugal", "South Africa", "Spain", "USA"]
    
    var body: some View {
        NavigationView {
            VStack(alignment: .center, spacing: 10) {
                
                VStack {
                    Text("Wine Fact of the Week")
                        .font(.title3)
                        .bold()
                    
                    
                    if let fact = wineFactOfTheWeek {
                        Text(fact)
                            
                            .multilineTextAlignment(.center)
                            .padding()
                    } else {
                        Text("Loading wine fact...")
                            .multilineTextAlignment(.center)
                            .padding()
                    }
                }
                .frame(maxWidth: .infinity, minHeight: 175) // Dynamic width, minimum height of 175
                .padding()
                // Subtle, semi-transparent background
                .cornerRadius(10)
                .overlay(
                    RoundedRectangle(cornerRadius: 10)
                        .stroke(Color("LightMaroon"), lineWidth: 1.5)
                )
                .background(
                    Color.lightLatte.opacity(1)
                    // Adding the circles at each corner inside the background modifier
                        .overlay(
                            GeometryReader { geometry in
                                Group {
                                    // Shift each circle inwards by adjusting the position offsets
                                    Circle().fill(Color("Maroon"))
                                        .frame(width: 7, height: 7)
                                        .position(x: geometry.frame(in: .local).minX + 15, y: geometry.frame(in: .local).minY + 15) // Top left corner
                                    
                                    Circle().fill(Color("Maroon"))
                                        .frame(width: 7, height: 7)
                                        .position(x: geometry.frame(in: .local).maxX - 15, y: geometry.frame(in: .local).minY + 15) // Top right corner
                                    
                                    Circle().fill(Color("Maroon"))
                                        .frame(width: 7, height: 7)
                                        .position(x: geometry.frame(in: .local).minX + 15, y: geometry.frame(in: .local).maxY - 15) // Bottom left corner
                                    
                                    Circle().fill(Color("Maroon"))
                                        .frame(width: 7, height: 7)
                                        .position(x: geometry.frame(in: .local).maxX - 15, y: geometry.frame(in: .local).maxY - 15) // Bottom right corner
                                }
                            }
                        )
                )
                .padding()
                
                
                
                
                HStack(alignment: .center, spacing: 2) {
                    // Flashcard Progress Button
                    VStack {
                        Button(action: {
                            isFlashcardProgressSheetPresented = true
                        }) {
                            VStack() {
                                Text("My Flashcard Progress")
                                    .frame(width: 125, height: 100) // Ensures the text field fills the button area
                                    .contentShape(Rectangle()) // Makes the whole area tappable
                                    .bold()
                                    .foregroundColor(Color.black) // Text color set to Latte
                                    .multilineTextAlignment(.center) // Center align text
                                
                            }
                            .padding()
                            .background(Color.lightLatte.opacity(1)) // Background color set to Maroon
                            .clipShape(RoundedRectangle(cornerRadius: 10))
                            .overlay(
                                RoundedRectangle(cornerRadius: 10)
                                    .stroke(Color("LightMaroon"), lineWidth: 2.4)
                                
                                
                            )
                            
                            .shadow(color: .black.opacity(0.4), radius: 7) // Apply shadow
                        }
                    }
                    .sheet(isPresented: $isFlashcardProgressSheetPresented) {
                        FlashcardProgressView(flashcardProgress: flashcardProgress)
                            .preferredColorScheme(.light) // Force light mode
                    }
                    
                    Spacer()
                    
                    
                    
                    VStack {
                        if let latestPost = blogPosts.first {
                            NavigationLink(destination: BlogPostView(blogPost: latestPost, blogPosts: blogPosts)) {
                                ZStack {
                                    Text("Weekly Blog Post")
                                        .frame(width: 125, height: 100)
                                        .contentShape(Rectangle())
                                        .bold()
                                        .foregroundColor(Color.black)
                                        .multilineTextAlignment(.center)
                                }
                                .padding()
                                .background(Color.lightLatte.opacity(1))
                                .clipShape(RoundedRectangle(cornerRadius: 10))
                                .overlay(
                                    RoundedRectangle(cornerRadius: 10)
                                        .stroke(Color("LightMaroon"), lineWidth: 2.4)
                                )
                                .shadow(color: .black.opacity(0.4), radius: 7) // Apply shadow
                            }
                        } else {
                            ZStack {
                                Text("Loading Blog Post...")
                                    .frame(width: 125, height: 100)
                                    .contentShape(Rectangle())
                                    .bold()
                                    .foregroundColor(Color.gray)
                                    .multilineTextAlignment(.center)
                            }
                            .padding()
                            .background(Color.lightLatte.opacity(1))
                            .clipShape(RoundedRectangle(cornerRadius: 10))
                            .overlay(
                                RoundedRectangle(cornerRadius: 10)
                                    .stroke(Color("LightMaroon"), lineWidth: 2.4)
                            )
                            .shadow(color: .black.opacity(0.4), radius: 7) // Apply shadow
                        }
                    }
                }
                .frame(maxWidth: .infinity, alignment: .center)
                .padding() // Padding around the HStack
                
               
                
                
                
                // New Recent Wines Section
                VStack(alignment: .center) { // Changed alignment to .center
                    Text("Recently Added Wines")
                        .font(.headline)
                        .padding(.bottom, 3)
                    // Additional content in this VStack will also be centered
                    
                    
                    if recentWines.isEmpty {
                        Text("No recent wines added.")
                            .foregroundColor(.gray)
                    } else {
                        ForEach(recentWines, id: \.self) { wine in
                            NavigationLink(destination: WineDetailView(wineEntity: wine)) {
                                HStack {
                                    // Optional: Display an image if available
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
                                            .foregroundColor(.gray)
                                    }
                                    
                                    Spacer()
                                    
                                    
                                    Image(systemName: "chevron.right")
                                        .foregroundColor(.gray)
                                    
                                }
                                .contentShape(Rectangle())  // Ensures the entire area is clickable
                                .padding(.vertical, 5)
                               
                            }
                            
                            .buttonStyle(PlainButtonStyle()) // Use PlainButtonStyle to avoid default button behavior
                            
                            
                           Divider()
                        }
                    }
                }
                
                .frame(maxWidth: .infinity, minHeight: 235, alignment: .center)
                .padding()
                .cornerRadius(10)
                .overlay(
                    RoundedRectangle(cornerRadius: 10)
                        .stroke(Color("LightMaroon"), lineWidth: 1.5)
                )
                .background(Color.lightLatte.opacity(1))
                .padding()
                
                Spacer(minLength: 1)
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
            fetchContent()
            initializeFlashcardProgress()
            fetchRecentWines()  // Manually fetch recent wines
        }
            
        .alert(isPresented: $showAlert) { // Add this line
            Alert(title: Text("Error"), message: Text(alertMessage), dismissButton: .default(Text("OK")))
        }
    }
}
    
    private func fetchRecentWines() {
        let request: NSFetchRequest<WineEntity> = WineEntity.fetchRequest()
        request.sortDescriptors = [NSSortDescriptor(keyPath: \WineEntity.dateAdded, ascending: false)]
        request.fetchLimit = 3

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
    
    private func initializeFlashcardProgress() {
        if flashcardProgress.isEmpty {  // Only initialize if it's empty
            for region in allRegions {
                flashcardProgress[region] = 0 // Start every region at 0%
            }
        }
        fetchFlashcardProgress()  // Always fetch to update with the latest data
    }
    
    private func fetchFlashcardProgress() {
        let request: NSFetchRequest<StudyCard> = StudyCard.fetchRequest()
        do {
            let results = try context.fetch(request)
            var progressCount: [String: Int] = [:]
            var totalCount: [String: Int] = [:]
            
            // Calculate the number of cards per region and the number qualifying for progress
            for card in results {
                let region = card.region ?? "Unknown"
                totalCount[region, default: 0] += 1
                if card.boxNumber >= 3 {  // Assuming progress is counted from box 3 and above
                    progressCount[region, default: 0] += 1
                }
            }
            
            // Calculate and update progress for each region
            for region in allRegions {
                let knownCount = progressCount[region] ?? 0
                let total = totalCount[region] ?? 1  // Avoid division by zero
                let percentage = (knownCount * 100) / total
                flashcardProgress[region] = percentage
            }
        } catch {
            print("Error fetching flashcard data: \(error)")
        }
    }
}


