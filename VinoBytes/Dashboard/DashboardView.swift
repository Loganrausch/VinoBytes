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
    @State private var wineFactOfTheWeek: String?
    @State private var showAlert = false
    @State private var alertMessage = ""
    @State private var recentWines: [WineEntity] = []
    @ObservedObject var refreshNotifier: RefreshNotifier  // Add this line
    @EnvironmentObject var openAIManager: OpenAIManager  // Access from environment
    
    
    var body: some View {
        
        NavigationView {
            
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
                  
                        Text("Need Something Here. Hmm..")
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
                        
                    
                    
                    Spacer()
                    
                    // Weekly Blog Post Button
                    if let latestPost = blogPosts.first {
                        NavigationLink(destination: BlogPostView(blogPost: latestPost, blogPosts: blogPosts)) {
                            Text("Weekly Wine Blog Post")
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
                                .shadow(color: .black.opacity(0.6), radius: 6)
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


