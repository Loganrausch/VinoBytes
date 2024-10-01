//
//  PastPostsSheet.swift
//  VinoBytes
//
//  Created by Logan Rausch on 9/30/24.
//

import Foundation
import SwiftUI

struct PastPostsSheet: View {
    let blogPosts: [BlogPost]
    @Binding var selectedPost: BlogPost
    @Environment(\.presentationMode) var presentationMode
    
    var body: some View {
        NavigationView {
            List(blogPosts) { post in
                Button(action: {
                    selectedPost = post
                    presentationMode.wrappedValue.dismiss()
                }) {
                    Text(post.title)
                    
                }
                .accentColor(.black)
            }
            
            
            
            .navigationTitle("Past Posts")
            .navigationBarTitleDisplayMode(.inline)
            .navigationBarItems(trailing: Button("Done") {
                presentationMode.wrappedValue.dismiss()
            })
            .accentColor(.latte)
            .bold()
        }
    }
}


