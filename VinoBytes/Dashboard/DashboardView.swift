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
    @ObservedObject var refreshNotifier: RefreshNotifier  // Add this line
    @EnvironmentObject var openAIManager: OpenAIManager  // Access from environment
    
    @FetchRequest(
        entity: WineEntity.entity(),
        sortDescriptors: []
    ) var wines: FetchedResults<WineEntity>
    
    // List of all regions
    let allRegions = ["Argentina", "Australia", "Austria", "Chile", "France", "Germany", "Greece", "Hungary", "Italy", "New Zealand", "Portugal", "South Africa", "Spain", "USA"]
    
    var body: some View {
        NavigationView {
            VStack(alignment: .center, spacing: 20) {
                
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
                .frame(minWidth: 250, maxWidth: 350) // Ensures the box is never too small or too large
                .frame(maxHeight: 200) // Ensures the height does not exceed 150
                .padding()
                // Subtle, semi-transparent background
                .cornerRadius(10)
                .overlay(
                    RoundedRectangle(cornerRadius: 10)
                        .stroke(Color("LightMaroon"), lineWidth: 1.5)
                )
                .background(
                    Color.latte.opacity(0.6)
                    // Adding the circles at each corner inside the background modifier
                    .overlay(
                        GeometryReader { geometry in
                                    Group {
                                        // Shift each circle inwards by adjusting the position offsets
                                        Circle().fill(Color("LightMaroon"))
                                            .frame(width: 10, height: 10)
                                            .position(x: geometry.frame(in: .local).minX + 15, y: geometry.frame(in: .local).minY + 15) // Top left corner
                                        
                                        Circle().fill(Color("LightMaroon"))
                                            .frame(width: 10, height: 10)
                                            .position(x: geometry.frame(in: .local).maxX - 15, y: geometry.frame(in: .local).minY + 15) // Top right corner
                                        
                                        Circle().fill(Color("LightMaroon"))
                                            .frame(width: 10, height: 10)
                                            .position(x: geometry.frame(in: .local).minX + 15, y: geometry.frame(in: .local).maxY - 15) // Bottom left corner
                                        
                                        Circle().fill(Color("LightMaroon"))
                                            .frame(width: 10, height: 10)
                                            .position(x: geometry.frame(in: .local).maxX - 15, y: geometry.frame(in: .local).maxY - 15) // Bottom right corner
                            }
                        }
                    )
                )
                .padding()
                Spacer(minLength: 1)
                
                
                
                // Flashcard Progress Button
                VStack {
                    Button(action: {
                        isFlashcardProgressSheetPresented = true
                    }) {
                        VStack(spacing: 6) {
                            Text("My Flashcard Progress")
                                .frame(maxWidth: .infinity, minHeight: 20) // Ensures the text field fills the button area
                                .contentShape(Rectangle()) // Makes the whole area tappable
                                .bold()
                                .foregroundColor(Color.black) // Text color set to Latte
                            
                        }
                        .padding()
                        .background(Color.white) // Background color set to Maroon
                        .clipShape(RoundedRectangle(cornerRadius: 10))
                        .overlay(
                            RoundedRectangle(cornerRadius: 10)
                                .stroke(Color("LightMaroon"), lineWidth: 2)
                            
                            
                        )
                        .shadow(radius: 10) // Apply shadow
                    }
                    .padding(.horizontal)
                    
                }
                .sheet(isPresented: $isFlashcardProgressSheetPresented) {
                    FlashcardProgressView(flashcardProgress: flashcardProgress)
                        .preferredColorScheme(.light) // Force light mode
                }
                .padding(.bottom)
                
                HStack(spacing: 75) {
                    VStack {
                        Text("My Wines")
                            .font(.headline)
                            .frame(width: 100, alignment: .center)
                        NavigationLink(destination: MyWinesView(isRootView: false, refreshNotifier: refreshNotifier)) {
                            ZStack {
                                Circle()
                                    .stroke(Color("LightMaroon"), lineWidth: 5)
                                    .frame(width: 110, height: 110)
                                    .background(Color.white)
                                    .clipShape(Circle())
                                    .shadow(radius: 10) // Apply shadow
                                Text("\(wines.count)")
                                    .font(.largeTitle)
                                    .foregroundColor(.black)
                            }
                        }
                    }
                    
                    VStack {
                        Text("White Sheet")
                            .font(.headline)
                            .frame(width: 109, alignment: .center)
                        Button(action: {
                            isWhiteDisplaySheetPresented = true
                        }) {
                            ZStack {
                                Circle()
                                    .stroke(Color("LightMaroon"), lineWidth: 5)
                                    .frame(width: 110, height: 110)
                                    .background(Color.white)
                                    .clipShape(Circle())
                                    .shadow(radius: 10) // Apply shadow
                                
                                Text("Tap Here")
                                    .font(.headline)
                                    .foregroundColor(.black)
                                
                            }
                        }
                        .sheet(isPresented: $isWhiteDisplaySheetPresented) {
                            WhiteBackgroundView()
                                .preferredColorScheme(.light) // Force light mode
                        }
                    }
                }
                .padding()
                
                Text("Weekly Wine Blog")
                    .font(.title3)
                    .bold()
                    .padding(.top)
                
                if let latestPost = blogPosts.first {
                    NavigationLink(destination: BlogPostView(blogPost: latestPost, blogPosts: blogPosts)) {
                        ZStack {
                            RoundedRectangle(cornerRadius: 10)
                                .stroke(Color("LightMaroon"), lineWidth: 5)
                                .frame(width: 200, height: 50)
                                .background(Color.white)
                                .clipShape(RoundedRectangle(cornerRadius: 10))
                                .shadow(radius: 10) // Apply shadow
                            Text("Read Our Latest Post")
                                .font(.headline)
                                .foregroundColor(.black)
                        }
                    }
                } else {
                    ZStack {
                        RoundedRectangle(cornerRadius: 10)
                            .stroke(Color("LightMaroon"), lineWidth: 5)
                            .frame(width: 200, height: 50)
                            .background(Color.white)
                            .clipShape(RoundedRectangle(cornerRadius: 10))
                            .shadow(radius: 10)
                        Text("Read Our Latest Post")
                            .font(.headline)
                            .foregroundColor(.gray)
                    }
                }
                
                Spacer(minLength: 20)
            }
            .padding()
            .navigationBarTitle("Dashboard", displayMode: .inline)
            .toolbar {
                ToolbarItem(placement: .navigationBarTrailing) {
                    NavigationLink(destination: AccountView(refreshNotifier: refreshNotifier)) {
                        Image(systemName: "gearshape.fill")
                            .imageScale(.large)
                            .foregroundColor(Color(red: 243/255, green: 232/255, blue: 219/255))
                    }
                }
            }
            .onAppear {
                fetchContent()
                initializeFlashcardProgress()
            }
            .alert(isPresented: $showAlert) { // Add this line
                            Alert(title: Text("Error"), message: Text(alertMessage), dismissButton: .default(Text("OK")))
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


