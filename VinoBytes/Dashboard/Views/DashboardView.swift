//
//  DashboardView.swift
//  VinoDecks
//
//  Created by Logan Rausch on 3/28/24.
//

import SwiftUI
import CoreData
import RevenueCat
import RevenueCatUI

struct DashboardView: View {
    
    @StateObject private var viewModel = DashboardViewModel()
    
    @State private var showWhiteBackgroundView = false
    @State private var navigateToBlogPost = false  // Controls navigation to the blog post
    @State private var showAccountSheet = false
    @State private var showPaywall = false
    
    @EnvironmentObject var refreshNotifier: RefreshNotifier
    @EnvironmentObject var openAIManager: OpenAIManager  // Access from environment
    @EnvironmentObject var authViewModel: AuthViewModel  // To access subscription status
    @EnvironmentObject var userProfile: UserProfileViewModel // To access user first name
    
    @Environment(\.managedObjectContext) private var context
    
    
    var body: some View {
        NavigationStack {
            GeometryReader { geometry in
                let buttonHeight = geometry.size.height * 0.135
                ScrollView {
                    VStack(spacing: 16) {
                        
                        // ── Header ──
                        HStack {
                            Text("Your Dashboard")
                                .font(.title.bold())
                            
                            
                            Spacer()
                            
                            if authViewModel.hasActiveSubscription {
                                Label {
                                    Text("Pro")
                                } icon: {
                                    Image(systemName: "checkmark.circle.fill")
                                }
                                .font(.subheadline.bold())
                                .foregroundColor(Color("Latte"))
                                .padding(.horizontal, 12)
                                .padding(.vertical, 6)
                                .background(Color("Burgundy"))
                                .clipShape(Capsule())
                            } else {
                                Button("Upgrade") {
                                    showPaywall = true
                                }
                                .font(.subheadline.bold())
                                .foregroundColor(.white)
                                .padding(.horizontal, 12)
                                .padding(.vertical, 6)
                                .background(Color.burgundy)
                                .clipShape(Capsule())
                            }
                            
                            Button {
                                showAccountSheet = true
                            } label: {
                                Image(systemName: "gearshape")
                                    .font(.title2.bold())
                                    .foregroundColor(.burgundy)
                            }
                        }
                        .padding(.horizontal)
                        .padding(.top, 12)
                        .padding(.bottom, 7)
                        
                        Button("Reset Onboarding") {
                            NotificationCenter.default.post(name: .didResetOnboarding, object: nil)
                        }
                        .font(.subheadline.bold())
                        .foregroundColor(.burgundy)
                        .padding()
                        .background(Color.latte.opacity(0.8))
                        .clipShape(Capsule())
                        .shadow(radius: 3)
                        
                        VStack(alignment: .leading, spacing: 8) {
                            // Outside the box
                            Text("Wine Fact of the Day")
                                .font(.title3)
                                .bold()
                                .padding(.horizontal)
                                .padding(.bottom, 6)
                            
                            // Inside the box
                            VStack(spacing: 12) {
                                if viewModel.isFactFetching {
                                    ProgressView("Loading...")
                                } else if let fact = viewModel.wineFactOfTheWeek {
                                    VStack(spacing: 6) {
                                        Text(fact)
                                            .font(.body)
                                            .multilineTextAlignment(.center)
                                    }
                                    .frame(maxWidth: .infinity)
                                } else {
                                    Text("No fact available.")
                                        .foregroundColor(.gray)
                                        .multilineTextAlignment(.center)
                                }
                            }
                            .frame(maxWidth: .infinity)
                            .padding()
                            .background(Color.latte)
                            .cornerRadius(12)
                            .overlay(
                                RoundedRectangle(cornerRadius: 16)
                                    .stroke(Color.burgundy, lineWidth: 1)
                            )
                            .padding(.horizontal)
                        }
                        
                        Divider()
                            .padding(.horizontal)
                            .padding(.top)
                        
                        // Recent Wines Carousel Section
                        VStack(alignment: .leading, spacing: 8) {
                            Text("Your Recent Wines")
                                .font(.title3)
                                .bold()
                                .padding(.horizontal)
                            
                            // Wrap the content in a fixed-height container
                            Group {
                                if viewModel.recentWines.isEmpty {
                                    Text("Add a wine to get started.")
                                        .foregroundColor(.gray)
                                        .padding(.horizontal)
                                } else {
                                    ScrollView(.horizontal, showsIndicators: false) {
                                        HStack(spacing: 16) {
                                            ForEach(viewModel.recentWines, id: \.objectID) { wine in
                                                RecentWineCard(wine: wine)
                                            }
                                        }
                                        .padding(.horizontal)
                                    }
                                }
                            }
                            .frame(height: 145)  // Fixed size regardless of content
                            .frame(maxWidth: .infinity)
                            .padding(.top, 6)
                            .padding(.bottom)
                            .background(
                                RoundedRectangle(cornerRadius: 16)
                                    .fill(Color(.latte))
                            )
                            .overlay(
                                RoundedRectangle(cornerRadius: 16)
                                    .stroke(Color.burgundy, lineWidth: 1)
                            )
                            .padding(.horizontal)
                            .padding(.vertical, 12)
                            
                        }
                        
                        Divider().padding(.horizontal)
                        
                        HStack(spacing: 30) {
                            
                            
                            Button(action: {
                                showWhiteBackgroundView.toggle()
                            }) {
                                Text("Digital Napkin")
                                    .bold()
                                    .foregroundColor(.black)
                                    .frame(maxWidth: .infinity)
                                    .padding(5)
                                    .frame(height: buttonHeight)
                                    .background(Color.latte)
                                    .cornerRadius(16)
                                    .overlay(
                                        RoundedRectangle(cornerRadius: 16)
                                            .stroke(Color("Burgundy"), lineWidth: 1.5)
                                    )
                                
                                    .shadow(color: Color.black.opacity(0.35), radius: 6, x: 0, y: 4)
                            }
                            .sheet(isPresented: $showWhiteBackgroundView) {
                                WhiteBackgroundView()
                            }
                            
                            
                            // Weekly Blog Post Button
                            if let latestPost = viewModel.blogPosts.first {
                                
                                Button {
                                    // 1) Tell the VM to handle the counter & review prompt
                                    viewModel.handleLatestBlogTap(
                                        isSubscribed: authViewModel.hasActiveSubscription
                                    )
                                    // 2) Then navigate
                                    navigateToBlogPost = true
                                } label: {
                                    HStack {
                                        Spacer()
                                        Text("Latest Wine Byte")
                                            .bold()
                                            .foregroundColor(.black)
                                        Spacer()
                                        
                                    }
                                    .frame(maxWidth: .infinity)
                                    .padding(5)
                                    .frame(height: buttonHeight)
                                    .background(Color.latte)
                                    .cornerRadius(16)
                                    .overlay(
                                        RoundedRectangle(cornerRadius: 16)
                                            .stroke(Color("Burgundy"), lineWidth: 1.5)
                                    )
                                
                                    .shadow(color: Color.black.opacity(0.35), radius: 6, x: 0, y: 4)
                            }
                                .navigationDestination(isPresented: $navigateToBlogPost) {
                                    BlogPostView(blogPost: latestPost, blogPosts: viewModel.blogPosts)
                                }
                            } else {
                                Text("Loading Blog Post...")
                                    .bold()
                                    .foregroundColor(.gray)
                                    .frame(maxWidth: .infinity)
                                    .frame(height: buttonHeight)
                                    .background(Color.latte)
                                    .cornerRadius(16)
                                    .overlay(
                                        RoundedRectangle(cornerRadius: 16)
                                            .stroke(Color("Burgundy"), lineWidth: 1.5)
                                    )
                                
                                    .shadow(color: Color.black.opacity(0.35), radius: 6, x: 0, y: 4)
                            }
                            
                        }
                        .padding(.bottom)
                        .padding(.horizontal)
                        .padding(.top, 8)
                        
                        
                        Spacer()
                        
                    }
                }
                .animation(nil, value: UUID()) // This disables implicit animations on this container.
                .padding(10)
            }
            
            .sheet(isPresented: $showAccountSheet) {
                AccountView(
                    refreshNotifier: refreshNotifier,
                    context:        context,
                    openAI:         openAIManager
                )
                .environment(\.managedObjectContext, context)
            }
            .sheet(isPresented: $showPaywall) {
                PaywallView()
            }
            
            .onAppear {
                viewModel.start(context: context)
            }
            .alert(
                "Error",
                isPresented: Binding(
                    get:  { viewModel.alertMessage != nil },
                    set:  { _ in viewModel.alertMessage = nil }
                )
            ) {
                Button("OK", role: .cancel) {}
            } message: {
                Text(viewModel.alertMessage ?? "")
            }
            
            .preferredColorScheme(.light) // Forces the dialog into light mode.
            
        }
    }
}
