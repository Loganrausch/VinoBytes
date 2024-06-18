//
//  DashboardView.swift
//  VinoDecks
//
//  Created by Logan Rausch on 3/28/24.
//

import Foundation
import SwiftUI

struct DashboardView: View {
    @ObservedObject var wineData: WineData
    @State private var blogPosts: [BlogPost] = []
    @State private var flashcardProgress: [String: Int] = ["France": 75, "Italy": 60, "Spain": 80]
    @State private var isFlashcardProgressExpanded = false
    @State private var wineFactOfTheWeek: String?
    @State private var isSheetPresented = false // State for sheet presentation

    var body: some View {
        ScrollView {
            VStack(alignment: .center, spacing: 20) {
                Text("Wine Fact of the Week")
                    .font(.title2)
                    .bold()
                
                // Box around the wine fact
                VStack {
                    if let fact = wineFactOfTheWeek {
                        Text(fact)
                            .multilineTextAlignment(.center) // Ensure text within is centered
                            .padding()
                    } else {
                        Text("Loading wine fact...")
                            .multilineTextAlignment(.center) // Center the loading text
                            .padding()
                    }
                }
                .frame(maxWidth: .infinity) // Ensure the box takes the full width
                .padding()
                .background(Color(.systemBackground))
                .cornerRadius(10)
                .overlay(
                    RoundedRectangle(cornerRadius: 10)
                        .stroke(Color(red: 235/255, green: 218/255, blue: 170/255), lineWidth: 1.5) // Set the stroke color
                )
                .padding(.horizontal)
                
                Spacer(minLength: 1)
                
                // Flashcard Progress Section
                VStack {
                    Button(action: {
                        withAnimation {
                            isFlashcardProgressExpanded.toggle()
                        }
                    }) {
                        VStack(spacing: 6) {
                            Text("Flashcard Progress")
                            Image(systemName: "chevron.down")
                                .rotationEffect(.degrees(isFlashcardProgressExpanded ? 180 : 0))
                        }
                        .foregroundColor(.black) // Set text and chevron color to black
                    }
                    .font(.headline)
                    .padding()
                    .frame(maxWidth: .infinity) // Make the button fill the available width
                    .background(Color(.systemBackground))
                    .cornerRadius(10)
                    .overlay(
                        RoundedRectangle(cornerRadius: 10)
                            .stroke(Color(red: 235/255, green: 218/255, blue: 170/255), lineWidth: 1.5) // Set the stroke color
                    )
                    .padding(.horizontal)

                    if isFlashcardProgressExpanded {
                        VStack {
                            ForEach(flashcardProgress.keys.sorted(), id: \.self) { region in
                                if let progress = flashcardProgress[region] {
                                    HStack {
                                        Text(region)
                                        Spacer()
                                        ProgressView(value: Float(progress), total: 100)
                                            .progressViewStyle(CustomProgressViewStyle()) // Apply the custom style
                                            .frame(width: 100)
                                        Text("\(progress)%")
                                    }
                                    .padding(.vertical, 2)
                                }
                            }
                        }
                        .padding()
                    }
                }
                .padding(.bottom)

                HStack(spacing: 75) {
                                    VStack {
                                        Text("My Wines")
                                            .font(.headline)
                                            .frame(width: 100, alignment: .center)
                                        // Fix the width
                                        ZStack {
                                            Circle()
                                                .stroke(Color(red: 235/255, green: 218/255, blue: 170/255), lineWidth: 1.5) // Set the stroke color
                                                .frame(width: 110, height: 110)
                                            Text("\(wineData.wines.count)")
                                                .font(.largeTitle)
                                        }
                                    }

                                    VStack {
                                        Text("White Display") // Longer title
                                            .font(.headline)
                                            .frame(width: 109, alignment: .center) // Fix the width
                                        Button(action: {
                                            isSheetPresented = true
                                        }) {
                                            ZStack {
                                                Circle()
                                                    .stroke(Color(red: 235/255, green: 218/255, blue: 170/255), lineWidth: 1.5) // Set the stroke color
                                                    .frame(width: 110, height: 110)
                                                Text("Tap Here")
                                                    .font(.headline) // Use headline for a smaller font
                                                    .foregroundColor(.black) // Set the text color to black
                                            }
                                        }
                                        .sheet(isPresented: $isSheetPresented) {
                                            WhiteBackgroundView()
                                        }
                                    }
                                }
                                .padding(.bottom)
                
                Text("Weekly Wine Blog")
                    .font(.title2)
                    .bold()
                    .padding(.top)

                if let latestPost = blogPosts.first {
                    NavigationLink(destination: BlogPostView(blogPost: latestPost, blogPosts: blogPosts)) {
                        ZStack {
                            RoundedRectangle(cornerRadius: 10)
                                .stroke(Color(red: 235/255, green: 218/255, blue: 170/255), lineWidth: 1.5) // Set the stroke color
                                .frame(width: 200, height: 50)
                            Text("Read Our Latest Post")
                                .font(.headline)
                                .foregroundColor(.black)
                        }
                    }
                } else {
                    ZStack {
                        RoundedRectangle(cornerRadius: 10)
                            .stroke(Color(red: 235/255, green: 218/255, blue: 170/255), lineWidth: 1.5) // Set the stroke color
                            .frame(width: 200, height: 50)
                        Text("Read Our Latest Post")
                            .font(.headline)
                            .foregroundColor(.gray)
                    }
                }
                
                Spacer(minLength: 20)
                
            }
            .padding()
        }
        .navigationBarTitle("Dashboard", displayMode: .large)
        .onAppear {
            ContentfulManager.shared.fetchBlogPosts { posts, error in
                if let posts = posts {
                    self.blogPosts = posts
                    print("Fetched \(posts.count) posts")  // Debug print
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
}

// Custom ProgressViewStyle
struct CustomProgressViewStyle: ProgressViewStyle {
    func makeBody(configuration: Configuration) -> some View {
        ProgressView(configuration)
            .accentColor(Color(red: 128/255, green: 0, blue: 0)) // Set the accent color for the progress fill
    }
}

struct DashboardView_Previews: PreviewProvider {
    static var previews: some View {
        NavigationView {
            DashboardView(wineData: WineData()) // Pass a WineData instance for previews
        }
    }
}
