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
    @State private var wineFactOfTheWeek: String?
    @State private var isFlashcardProgressSheetPresented = false
    @State private var isWhiteDisplaySheetPresented = false

    var body: some View {
        VStack(alignment: .center, spacing: 20) {
            
            VStack {
            Text("Wine Fact of the Week")
                .font(.title3)
                .bold()
                
                // Lightbulb icon
                                Image(systemName: "lightbulb")
                                    .foregroundColor(Color(red: 128/255, green: 0, blue: 0))
                                    .padding(.vertical, 3) // Adds space around the icon

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
            .frame(maxWidth: .infinity)
            .padding()
            .background(Color(red: 128/255, green: 0, blue: 0).opacity(0.07)) // Subtle, semi-transparent background
            .cornerRadius(10)
            .overlay(
                RoundedRectangle(cornerRadius: 10)
                    .stroke(Color(red: 128/255, green: 0, blue: 0), lineWidth: 0.7)
            )
            .padding(.horizontal)

            Spacer(minLength: 1)

            // Flashcard Progress Button
            VStack {
                Button(action: {
                    isFlashcardProgressSheetPresented = true
                }) {
                    VStack(spacing: 6) {
                        Text("Flashcard Progress")
                    }
                    .foregroundColor(.black)
                }
                .font(.headline)
                .padding()
                .frame(maxWidth: .infinity)
                .background(Color.white)
                .clipShape(RoundedRectangle(cornerRadius: 10))
                .shadow(radius: 10)
                .overlay(
                    RoundedRectangle(cornerRadius: 10)
                        .stroke(Color(red: 128/255, green: 0, blue: 0), lineWidth: 1)
                )
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
                    NavigationLink(destination: MyWinesView(wineData: wineData)) {
                        ZStack {
                            Circle()
                                .stroke(Color(red: 128/255, green: 0, blue: 0), lineWidth: 1.5)
                                .frame(width: 110, height: 110)
                                .background(Color.white)
                                .clipShape(Circle())
                                .shadow(radius: 10)
                            Text("\(wineData.wines.count)")
                                .font(.largeTitle)
                                .foregroundColor(.black)
                        }
                    }
                }

                VStack {
                    Text("White Display")
                        .font(.headline)
                        .frame(width: 109, alignment: .center)
                    Button(action: {
                        isWhiteDisplaySheetPresented = true
                    }) {
                        ZStack {
                            Circle()
                                .stroke(Color(red: 128/255, green: 0, blue: 0), lineWidth: 1.5)
                                .frame(width: 110, height: 110)
                                .background(Color.white)
                                .clipShape(Circle())
                                .shadow(radius: 10)
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
            .padding(.bottom)

            Text("Weekly Wine Blog")
                .font(.title3)
                .bold()
                .padding(.top)

            if let latestPost = blogPosts.first {
                NavigationLink(destination: BlogPostView(blogPost: latestPost, blogPosts: blogPosts)) {
                    ZStack {
                        RoundedRectangle(cornerRadius: 10)
                            .stroke(Color(red: 128/255, green: 0, blue: 0), lineWidth: 1)
                            .frame(width: 200, height: 50)
                            .background(Color.white)
                            .clipShape(RoundedRectangle(cornerRadius: 10))
                            .shadow(radius: 10)
                        Text("Read Our Latest Post")
                            .font(.headline)
                            .foregroundColor(.black)
                    }
                }
            } else {
                ZStack {
                    RoundedRectangle(cornerRadius: 10)
                        .stroke(Color(red: 128/255, green: 0, blue: 0), lineWidth: 1)
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
                        .foregroundColor(Color(red: 128/255, green: 0, blue: 0))
                }
            }
        }
        .onAppear {
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
}

// Custom ProgressViewStyle
struct CustomProgressViewStyle: ProgressViewStyle {
    func makeBody(configuration: Configuration) -> some View {
        ProgressView(configuration)
            .accentColor(Color(red: 128/255, green: 0, blue: 0))
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
            DashboardView(wineData: WineData())
        }
    }
}
