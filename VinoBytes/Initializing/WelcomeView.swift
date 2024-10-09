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
    
    var body: some View {
        VStack(spacing: 10) {
            // Top Navigation Bar
            HStack {
                Spacer()
              
            }
            .frame(height: 75) // Standard height for top bars
            .background(Color("Maroon")) // Replace with your custom maroon color
            
            
            // Tab View Content
            TabView(selection: $selectedTab) {
                ForEach(0..<7) { index in
                    WelcomeScreen(index: index, isSelected: $selectedTab)
                        .tag(index)
                }
            }
            .tabViewStyle(PageTabViewStyle(indexDisplayMode: .never)) // Hide default page indicators
            .frame(maxHeight: .infinity) // Ensures the TabView does not take over the entire space
            
            
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
        .edgesIgnoringSafeArea(.all) // Ensure the background goes all the way to the edges
    }
}


struct WelcomeScreen: View {
    let index: Int
    @Binding var isSelected: Int
    @State private var contentOpacity = 0.0
    @State private var isPaywallPresented = false  // State to control the presentation of the paywall
    
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
        "Experience the best in wine education!"
    ]
    
    var body: some View {
            GeometryReader { geometry in
                VStack(spacing: 0) {  // No spacing to control layout precisely
                    Spacer()  // Push content to the top
                    
                    // Grouped Title and Description
                    VStack(alignment: .center, spacing: 20) {
                        Text(titles[index])
                            .font(.largeTitle)
                            .padding(.horizontal)
                            .multilineTextAlignment(.center)
                        
                        Text(descriptions[index])
                            .font(.title2)
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
                                .foregroundColor(.maroon)
                                .font(.title3)
                                .background(Color.white) // Button background color
                                .clipShape(RoundedRectangle(cornerRadius: 10)) // Rounded corners
                                .overlay(
                                    RoundedRectangle(cornerRadius: 10) // Border matching rounded corners
                                        .stroke(Color.lightMaroon, lineWidth: 2)
                                )
                                .shadow(radius: 5)
                        }
                        .padding(.bottom, 30) // Padding from the bottom edge
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
