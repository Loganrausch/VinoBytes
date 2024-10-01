//
//  BlogPostOne.swift
//  VinoDecks
//
//  Created by Logan Rausch on 3/2/24.
//

import Foundation
import SwiftUI

struct BlogPost: Identifiable, Codable {
    let id: String
    let title: String
    let content: String
    let publicationDate: Date
    let featuredImage: ImageAsset?
    
    struct ImageAsset: Codable {
        let url: String
        let title: String?
        let description: String?
    }
}

struct BlogPostView: View {
    let blogPost: BlogPost
    var blogPosts: [BlogPost]
    
    @State private var selectedPost: BlogPost
    @State private var showingPastPosts = false
    
    init(blogPost: BlogPost, blogPosts: [BlogPost]) {
        self.blogPost = blogPost
        self.blogPosts = blogPosts
        _selectedPost = State(initialValue: blogPost)
    }
    
    var body: some View {
        ScrollView {
            VStack(alignment: .leading, spacing: 16) {
                // Display Featured Image
                if let image = selectedPost.featuredImage,
                   let imageURL = URL(string: image.url) { // Convert String to URL
                    AsyncImage(url: imageURL) { phase in
                        switch phase {
                        case .empty:
                            ProgressView()
                                .frame(maxWidth: .infinity, minHeight: 200)
                        case .success(let img):
                            img
                                .resizable()
                                .aspectRatio(contentMode: .fit)
                                .frame(maxWidth: .infinity)
                                .cornerRadius(10)
                        case .failure:
                            Image(systemName: "photo")
                                .resizable()
                                .scaledToFit()
                                .frame(maxWidth: .infinity, minHeight: 200)
                                .foregroundColor(.gray)
                        @unknown default:
                            EmptyView()
                        }
                    }
                    .padding(.bottom)
                }
                
                // Blog Post Title
                Text(selectedPost.title)
                    .font(.title)
                    .bold()
                    .padding(.bottom, 4)
                
                if let attributedContent = try? AttributedString(
                    markdown: selectedPost.content,
                    options: AttributedString.MarkdownParsingOptions(
                        allowsExtendedAttributes: true,
                        interpretedSyntax: .inlineOnlyPreservingWhitespace
                    )
                ) {
                    Text(attributedContent)
                        .padding(.bottom, 8)
                } else {
                    Text(selectedPost.content)
                        .font(.body)
                        .padding(.bottom, 8)
                }
                
                // Publication Date
                Text("Published on \(formattedDate(selectedPost.publicationDate))")
                    .font(.footnote)
                    .foregroundColor(.gray)
            }
            .padding()
        }
        .navigationBarTitle("Blog Post", displayMode: .inline)
        .navigationBarItems(trailing:
                                Button(action: {
            showingPastPosts = true
        }) {
            Image(systemName: "list.bullet")
                .imageScale(.large)
                .foregroundColor(.latte)
        }
           
        )
        .sheet(isPresented: $showingPastPosts) {
            PastPostsSheet(blogPosts: blogPosts, selectedPost: $selectedPost)
        }
    }
    
    private func formattedDate(_ date: Date) -> String {
        let formatter = DateFormatter()
        formatter.dateFormat = "dd MMM yyyy"
        return formatter.string(from: date)
    }
}

