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
    @State private var studyStreak = 7
    @State private var isFlashcardProgressExpanded = false
    @State private var wineFactOfTheWeek: String?

    

    var body: some View {
        ScrollView {
            VStack(alignment: .center) {
                Text("Wine Fact of the Week")
                    .font(.title2)
                    .bold()
            
                Spacer()
                
            

                Text(wineFactOfTheWeek ?? "Loading wine fact...")
                    .padding(.bottom)

            
Spacer(minLength: 20)
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
                            .stroke(Color.gray, lineWidth: 1)
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

                HStack(spacing: 80) {
                                    VStack {
                                        Text("My Wines")
                                            .font(.headline)
                                        ZStack {
                                            RoundedRectangle(cornerRadius: 10)
                                                .stroke(Color.gray, lineWidth: 1)
                                                .frame(width: 100, height: 100)
                                            Text("\(wineData.wines.count)")
                                                .font(.largeTitle)
                                        }
                                    }

                                    VStack {
                                        Text("Streak")
                                            .font(.headline)
                                        ZStack {
                                            RoundedRectangle(cornerRadius: 10)
                                                .stroke(Color.gray, lineWidth: 1)
                                                .frame(width: 100, height: 100)
                                            Text("🔥 \(studyStreak)")
                                                .font(.largeTitle)
                                        }
                                    }
                                }
                                .padding(.bottom)
                Text("Weekly Wine")
                                    .font(.title2)
                                    .bold()
                                    .padding(.top)

                if let latestPost = blogPosts.first {
                    NavigationLink(destination: BlogPostView(blogPost: latestPost, blogPosts: blogPosts)) {
                        Text("Read Our Latest Post")
                            .padding()
                            .foregroundColor(.white)
                            .background(Color(red: 128/255, green: 0, blue: 0))
                            .cornerRadius(8)
                    }
                } else {
                    Text("Read Our Latest Post")
                        .padding()
                        .background(Color.gray.opacity(0.5))
                        .cornerRadius(8)
                        .foregroundColor(.white)
                }
                                
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
