//
//  BlogPostOne.swift
//  VinoDecks
//
//  Created by Logan Rausch on 3/2/24.
//

import Foundation
import SwiftUI
import Contentful

struct BlogPost: Identifiable, Decodable {
    let id: String
    let title: String
    let content: String  // Temporarily treat content as plain text
    let publicationDate: Date
}

struct BlogPostView: View {
    let blogPost: BlogPost
    var blogPosts: [BlogPost]

    @State private var selectedPost: BlogPost

    init(blogPost: BlogPost, blogPosts: [BlogPost]) {
        self.blogPost = blogPost
        self.blogPosts = blogPosts
        _selectedPost = State(initialValue: blogPost)
    }

    var body: some View {
        ScrollView {
            VStack(alignment: .leading) {
                Text(selectedPost.title)
                    .font(.title)
                    .padding(.bottom)
                
                Text(selectedPost.content)
                    .padding(.bottom)
                
                Text("Published on \(formattedDate(selectedPost.publicationDate))")
                    .font(.footnote)
                    .foregroundColor(.gray)

            }
            .padding()
        }
        .navigationBarTitle("Blog Post", displayMode: .inline)
        .navigationBarItems(trailing: Menu("Past Posts") {
            ForEach(blogPosts, id: \.id) { post in
                Button(post.title) {
                    self.selectedPost = post
                }
            }
        })
    }

    private func formattedDate(_ date: Date) -> String {
        let formatter = DateFormatter()
        formatter.dateFormat = "dd MMM yyyy" // Set the format to match Contentful's format
        return formatter.string(from: date)
    }

}


struct BlogPostView_Previews: PreviewProvider {
    static var previews: some View {
        let sampleBlogPost = BlogPost(
            id: "1",
            title: "Sample Title",
            content: "Sample content for the blog post goes here.",
            publicationDate: Date()
        )
        return BlogPostView(blogPost: sampleBlogPost, blogPosts: [sampleBlogPost])
    }
}
