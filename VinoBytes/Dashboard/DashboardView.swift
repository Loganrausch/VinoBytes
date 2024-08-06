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
    @State private var flashcardProgress: [String: Int] = ["France": 75, "Italy": 60, "Spain": 80]
    @State private var wineFactOfTheWeek: String?
    @State private var isFlashcardProgressSheetPresented = false
    @State private var isWhiteDisplaySheetPresented = false

    @FetchRequest(
        entity: WineEntity.entity(),
        sortDescriptors: []
    ) var wines: FetchedResults<WineEntity>

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
                        .stroke(Color("Maroon"), lineWidth: 1.5)
                )
                .padding()
                Spacer(minLength: 1)
                
                
                
                // Flashcard Progress Button
                VStack {
                    Button(action: {
                        isFlashcardProgressSheetPresented = true
                    }) {
                        VStack(spacing: 6) {
                            Text("View Flashcard Progress")
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
                                .stroke(Color("Maroon"), lineWidth: 2)
                                
                                
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
                        NavigationLink(destination: MyWinesView(isRootView: false)) {
                            ZStack {
                                Circle()
                                    .stroke(Color("Maroon"), lineWidth: 5)
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
                                    .stroke(Color("Maroon"), lineWidth: 5)
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
                                .stroke(Color("Maroon"), lineWidth: 5)
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
                            .stroke(Color("Maroon"), lineWidth: 5)
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
                    NavigationLink(destination: AccountView()) {
                        Image(systemName: "gearshape.fill")
                            .imageScale(.large)
                            .foregroundColor(Color(red: 243/255, green: 232/255, blue: 219/255))
                    }
                }
            }
            .onAppear {
                fetchContent()
            }
        }
    }

            private func fetchContent() {
                ContentfulManager.shared.fetchBlogPosts { posts, error in
                    if let posts = posts {
                        self.blogPosts = posts
                        print("Fetched \(posts.count) posts")
                    } else if let error = error {
                        print("Error fetching posts: \(error.localizedDescription)")
                    }
                }
                ContentfulManager.shared.fetchWineFact { fact, error in
                    if let fact = fact {
                        self.wineFactOfTheWeek = fact
                    } else {
                        print("Error fetching wine fact: \(error?.localizedDescription ?? "Unknown error")")
                    }
                }
            }
        }

// Custom ProgressViewStyle
struct CustomProgressViewStyle: ProgressViewStyle {
    func makeBody(configuration: Configuration) -> some View {
        ProgressView(configuration)
            .accentColor(Color("Maroon"))
    }
}

// FlashcardProgressView for the sheet
struct FlashcardProgressView: View {
    var flashcardProgress: [String: Int]

    var body: some View {
        VStack {
            Text("Flashcard Progress")
                .font(.title)
                .padding()

            ForEach(flashcardProgress.keys.sorted(), id: \.self) { region in
                if let progress = flashcardProgress[region] {
                    HStack {
                        Text(region)
                        Spacer()
                        ProgressView(value: Float(progress), total: 100)
                            .progressViewStyle(CustomProgressViewStyle())
                            .frame(width: 100)
                        Text("\(progress)%")
                    }
                    .padding(.vertical, 2)
                }
            }
            Spacer()
        }
        .padding()
    }
}


struct DashboardView_Previews: PreviewProvider {
    static var previews: some View {
        NavigationView {
            DashboardView()
                .environment(\.managedObjectContext, PersistenceController.preview.container.viewContext)
        }
    }
}
