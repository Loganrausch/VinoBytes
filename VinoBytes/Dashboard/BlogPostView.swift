//
//  BlogPostOne.swift
//  VinoDecks
//
//  Created by Logan Rausch on 3/2/24.
//

import Foundation
import SwiftUI
import RevenueCat
import RevenueCatUI

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
    @State private var showSubscriptionOverlay = false // Controls when we show the subscription overlay
    @State private var isPaywallPresented = false
    @EnvironmentObject var authViewModel: AuthViewModel
    
    init(blogPost: BlogPost, blogPosts: [BlogPost]) {
        self.blogPost = blogPost
        self.blogPosts = blogPosts
        _selectedPost = State(initialValue: blogPost)
    }
    
    var body: some View {
        ZStack(alignment: .bottom) {
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
            
            .navigationBarTitle("Current Byte", displayMode: .inline)
            .navigationBarItems(trailing: navBarButton)
            .sheet(isPresented: $showingPastPosts) {
                PastPostsSheet(blogPosts: blogPosts, selectedPost: $selectedPost)
            }
            .scrollDisabled(!authViewModel.hasActiveSubscription)
            .gesture(
                DragGesture(minimumDistance: 0)
                    .onChanged { _ in
                        userInteractionAttempted()
                    }
            )
            .onTapGesture {
                userInteractionAttempted()
            }
            
            // Fading overlay at the bottom to simulate locked content
            if !authViewModel.hasActiveSubscription {
                // This gradient is clear at the top (no obstruction),
                // and fades to white at the bottom, making the text appear to fade away.
                LinearGradient(
                    gradient: Gradient(colors: [.clear, .white]),
                    startPoint: .top,
                    endPoint: .bottom
                )
                .frame(height: 225) // Adjust this to control how much fade you want
                .frame(maxWidth: .infinity, alignment: .bottom)
                .allowsHitTesting(false) // So the overlay doesn't block user interactions
            }
            
            // Overlay that appears only when user tries to interact and is not subscribed
            if showSubscriptionOverlay {
                Color.black.opacity(0.4).edgesIgnoringSafeArea(.all)
                
                VStack(spacing: 20) {
                    Text("Pro Feature")
                        .font(.title)
                        .bold()
                        .foregroundColor(.lightMaroon)
                    
                    Text("Please upgrade to VinoBytes Pro to access full wine bytes.")
                        .font(.body)
                        .multilineTextAlignment(.center)
                        .padding(.horizontal)
                        .foregroundColor(.lightMaroon)
                    
                    Button(action: {
                        startSubscriptionProcess()
                    }) {
                        Text("Subscribe")
                            .bold()
                            .foregroundColor(.lightMaroon)
                            .padding()
                            .frame(maxWidth: .infinity)
                            .background(Color("Latte"))
                            .cornerRadius(10)
                            .overlay(
                                RoundedRectangle(cornerRadius: 10)
                                    .stroke(Color.lightMaroon, lineWidth: 2)
                            )
                            .shadow(radius: 5)
                            .padding(.horizontal, 50)
                    }
                }
                .padding()
                .background(Color("Latte"))
                .cornerRadius(10)
                .padding(.horizontal)
                .shadow(radius: 20)
                .frame(maxWidth: .infinity, maxHeight: .infinity, alignment: .center)
            }
        }
        .sheet(isPresented: $isPaywallPresented) {
            PaywallView()
                .environmentObject(authViewModel)
        }
        
        // Whenever subscription status changes, if user is now subscribed, hide the overlay
        .onReceive(authViewModel.$hasActiveSubscription) { isSubscribed in
            if isSubscribed {
                showSubscriptionOverlay = false
            }
        }
    }
              
              // Determines which navigation bar button to show based on subscription status
              @ViewBuilder
              private var navBarButton: some View {
                  if authViewModel.hasActiveSubscription {
                      Button(action: {
                          showingPastPosts = true
                      }) {
                          Image(systemName: "list.bullet")
                              .imageScale(.large)
                              .foregroundColor(.latte)
                      }
                  } else {
                      Button(action: {
                                startSubscriptionProcess()
                            }) {
                                Text("Upgrade")
                                    .bold()
                                    .foregroundColor(.latte)
                            }
                        }
                    }
              
              private func userInteractionAttempted() {
                  guard !authViewModel.hasActiveSubscription else { return }
                  withAnimation {
                      showSubscriptionOverlay = true
                  }
              }
              
              private func formattedDate(_ date: Date) -> String {
                  let formatter = DateFormatter()
                  formatter.dateFormat = "dd MMM yyyy"
                  return formatter.string(from: date)
              }
              
              private func startSubscriptionProcess() {
                  Purchases.shared.getOfferings { offerings, error in
                      if let offerings = offerings, let offering = offerings.current {
                          if offering.availablePackages.isEmpty {
                              print("No packages available")
                          } else {
                              isPaywallPresented = true  // Trigger the paywall presentation
                          }
                      } else if let error = error {
                          print("Error fetching offerings: \(error.localizedDescription)")
                      }
                  }
              }
          }
