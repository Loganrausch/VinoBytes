//
//  ContentfulManager.swift
//  VinoDecks
//
//  Created by Logan Rausch on 3/29/24.
//

import Foundation
import SwiftUI
import Contentful

class ContentfulManager {
    static let shared = ContentfulManager()

    let client: Client

    init() {
        self.client = Client(spaceId: "kby79bk8msg8", accessToken: "***REMOVED***dR7QTjdb9i9mkhCV2oZIFyMaQumU")
    }
}


extension ContentfulManager {
    func fetchBlogPosts(completion: @escaping ([BlogPost]?, Error?) -> Void) {
        print("Fetching blog posts...")
        let query = Query.where(contentTypeId: "blogPost")
        do {
            let ordering = try Ordering("fields.publicationDate", inReverse: true)
            query.order(by: ordering)

            client.fetchArray(of: Entry.self, matching: query) { result in
                switch result {
                case .success(let array):
                    // Set up the DateFormatter for custom date parsing
                    let dateFormatter = DateFormatter()
                    dateFormatter.dateFormat = "yyyy-MM-dd" // Format to match the API response (date only)

                    let blogPosts = array.items.compactMap { entry -> BlogPost? in
                        print("Entry fields: \(entry.fields)") // Print raw fields for debugging

                        guard let title = entry.fields["title"] as? String,
                              let content = entry.fields["content"] as? String,
                              let publicationDateString = entry.fields["publicationDate"] as? String,
                              let publicationDate = dateFormatter.date(from: publicationDateString) else {
                            print("Failed to map Contentful entry to BlogPost")
                            return nil
                        }

                        return BlogPost(id: entry.id, title: title, content: content, publicationDate: publicationDate)
                    }
                    print("Successfully fetched \(blogPosts.count) posts")
                    completion(blogPosts, nil)
                case .failure(let error):
                    print("Error fetching posts: \(error.localizedDescription)")
                    completion(nil, error)
                }
            }
        } catch {
            print("Error creating ordering query: \(error.localizedDescription)")
            completion(nil, error)
        }
    }
}

extension ContentfulManager {
    func fetchWineFact(completion: @escaping (String?, Error?) -> Void) {
        let query = Query.where(contentTypeId: "wineFact") // Use the correct content type ID for WineFact
        query.limit(to: 1) // Assuming there's only one wine fact of the week

        client.fetchArray(of: Entry.self, matching: query) { result in
            switch result {
            case .success(let array):
                if let entry = array.items.first,
                   let wineFact = entry.fields["fact"] as? String {
                    completion(wineFact, nil)
                } else {
                    completion(nil, NSError(domain: "WineFactError", code: 0, userInfo: [NSLocalizedDescriptionKey: "Wine fact not found"]))
                }
            case .failure(let error):
                completion(nil, error)
            }
        }
    }
}
