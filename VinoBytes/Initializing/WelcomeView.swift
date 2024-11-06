//
//  WelcomeScreen.swift
//  VinoDecks
//
//  Created by Logan Rausch on 3/21/24.
//

import SwiftUI
import RevenueCat
import RevenueCatUI

struct WelcomeView: View {
    @State private var selectedTab = 0
    let totalTabs = 7
    @EnvironmentObject var authViewModel: AuthViewModel
    
    var body: some View {
        VStack(spacing: 10) {
            // Top Navigation Bar
            HStack {
                Spacer()
                
                Button(action: {
                                    selectedTab = totalTabs - 1 // Go to the last tab
                                }) {
                                    Text("Skip")
                                        .foregroundColor(.white)
                                        .bold()
                                        .padding(.horizontal)
                                        .padding(.top, 30)
                                }
                            }
            
            .frame(height: 80) // Standard height for top bars
            .background(Color("Maroon")) // Replace with your custom maroon color
            
            
            // Tab View Content
                       TabView(selection: $selectedTab) {
                           ForEach(0..<7) { index in
                               WelcomeScreen(index: index, isSelected: $selectedTab)
                                   .tag(index)
                           }
                       }
                       .tabViewStyle(PageTabViewStyle(indexDisplayMode: .never))
                       .frame(maxHeight: .infinity)
            
            
            // Bottom Navigation Bar with Custom Page Indicator
            ZStack {
                Rectangle()
                    .fill(Color("Maroon")) // Replace with your custom maroon color
                    .frame(height: 70) // Adjust the height as needed
                
                // Custom Page Indicator
                HStack(spacing: 10) {
                    ForEach(0..<totalTabs, id: \.self) { index in
                        Circle()
                            .fill(index == selectedTab ? Color.latte : Color.gray)
                            .frame(width: 10, height: 10)
                    }
                }
                
            }
            
            .edgesIgnoringSafeArea(.bottom) // Ensure the bar extends to the bottom edge
        }
        .background(Color.lightLatte)
        .edgesIgnoringSafeArea(.all) // Ensure the background goes all the way to the edges
        
    }
}


struct WelcomeScreen: View {
    let index: Int
    @Binding var isSelected: Int
    @State private var contentOpacity = 0.0
    @State private var isPaywallPresented = false  // State to control the presentation of the paywall
    @EnvironmentObject var authViewModel: AuthViewModel
    
    // Arrays to hold your content data
    let titles = [
       
        "Dashboard",
        "Flashcards",
        "Vino Chat",
        "My Wines",
        "Library",
        "iCloud Sync",
        "3 Day Free Trial"
    ]
    
    let sfSymbolNames = [
        
        "chart.bar.doc.horizontal",        // Dashboard
        "square.3.layers.3d.top.filled",         // Flashcards
        "bubble.left.and.bubble.right", // Vino Chat
        "wineglass",                  // My Wines
        "books.vertical",             // Library
        "icloud",                     // iCloud Sync
        "door.french.open"                    // Get Started
    ]
    
    let symbolColors = [
        
        Color.lightMaroon,      // Dashboard
        Color.lightMaroon,    // Flashcards
        Color.lightMaroon,    // Vino Chat
        Color.lightMaroon,       // My Wines
        Color.lightMaroon,    // Library
        Color.lightMaroon,      // iCloud Sync
        Color.lightMaroon,     // Get Started
    ]
    
    let descriptions = [
       
        "Access your learning tools all in one convenient place.",
        "Master over 1,800 interactive flashcards.",
        "Get instant answers with our wine chat powered by OpenAI.",
        "Log and track the wines you taste for easy reference as you study.",
        "Extensive information on grapes, regions, pairings, flaws and more.",
        "Automatically sync your data with iCloud integration.",
        "Experience the best in wine education."
    ]
    
    var body: some View {
            GeometryReader { geometry in
                VStack(spacing: 0) {  // No spacing to control layout precisely
                    Spacer()  // Push content to the top
                    
                    // Grouped Title and Description
                    VStack(alignment: .center, spacing: 20) {
                        Text(titles[index])
                            .font(.largeTitle)
                            .foregroundColor(.black)
                            .padding(.horizontal)
                            .multilineTextAlignment(.center)
                        
                        Text(descriptions[index])
                            .font(.title2)
                            .foregroundColor(.black)
                            .padding(.horizontal)
                            .multilineTextAlignment(.center)
                    }
                    .fixedSize(horizontal: false, vertical: true) // Allow description to expand vertically
                    .padding(.bottom, 50) // Fixed padding to create space between description and image
                    
                    // Image with Fixed Size
                    Image(systemName: sfSymbolNames[index])
                        .resizable()
                        .scaledToFit()
                        .frame(maxWidth: 250, maxHeight: 250)
                        .symbolRenderingMode(.hierarchical)
                        .foregroundColor(symbolColors[index])
                        .padding(.bottom, 20) // Spacing between image and button
                        .fontWeight(.thin)
                    
                   Spacer()
                    
                    // "Learn!" Button on the Last Screen
                    if index == 6 {
                        Button(action: startFreeTrial) {
                            Text("Subscribe!")
                                .bold()
                                .padding()
                                .foregroundColor(.latte)
                                .font(.headline)
                                .background(Color.lightMaroon) // Button background color
                                .cornerRadius(10) // Rounded corners
                                .shadow(radius: 5)
                        }
                        
                        Spacer()
                                            
                                            if authViewModel.isLoading {
                                                ProgressView("Restoring Purchase...")
                                            } else {
                                                Button(action: restorePurchases) {
                                                    Text("Restore Purchase")
                                                        .bold()
                                                        .padding()
                                                        .foregroundColor(.lightMaroon)
                                                        .font(.headline)
                                                }
                                            }
                                            
                                            // Display error message or success message based on ViewModel's state
                                            if let errorMessage = authViewModel.errorMessage {
                                                Text(errorMessage)
                                                    .foregroundColor(.red)
                                                    .multilineTextAlignment(.center)
                                                    .padding()
                                            } else if authViewModel.hasActiveSubscription {
                                                Text("Purchases restored successfully!")
                                                    .foregroundColor(.lightMaroon)
                                                    .padding()
                                            }
                                            
                                        } else {
                                            // Reserve space for the button to maintain layout consistency
                                            Rectangle()
                                                .fill(Color.clear)
                                                .frame(height: 70) // Same height as the "Learn!" button + padding
                                        }
                                    }
                .frame(width: geometry.size.width, height: geometry.size.height) // Ensure full-screen coverage
                .opacity(contentOpacity)
                .sheet(isPresented: $isPaywallPresented) {  // Presents the paywall
                    PaywallView()
                }
                .onChange(of: isSelected) { _, newValue in
                    if newValue == index {
                        fadeIn()
                    } else {
                        fadeOut()
                    }
                }
                .onAppear {
                    if isSelected == index {
                        fadeIn()
                    }
                }
            }
        }
    
    private func restorePurchases() {
        authViewModel.restorePurchases()
       }
    
    private func fadeIn() {
        withAnimation(.easeInOut(duration: 1.2)) {
            contentOpacity = 1.0
        }
    }
    
    private func fadeOut() {
        withAnimation(.easeInOut(duration: 0.3)) {
            contentOpacity = 0.0
        }
    }
    
    private func startFreeTrial() {
        Purchases.shared.getOfferings { (offerings, error) in
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

struct WelcomeView_Previews: PreviewProvider {
    static var previews: some View {
        WelcomeView()
    }
}
