//
//  BlogPost.swift
//  VinoBytes
//
//  Created by Logan Rausch on 5/4/25.
//

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
