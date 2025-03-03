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
    @Binding var hasSeenWelcomeView: Bool  // Accept the binding
    @State private var selectedTab = 0
    let totalTabs = 7
    @EnvironmentObject var authViewModel: AuthViewModel
    
    var body: some View {
        VStack(spacing: 10) {
            // Top Navigation Bar
            HStack {
                Spacer()
                
                if selectedTab < totalTabs - 1 { // Hide Skip button on the last screen
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
            }
            .frame(height: 80) // Standard height for top bars
            .background(Color("Maroon")) // Replace with your custom maroon color
            
            
            // Tab View Content
                       TabView(selection: $selectedTab) {
                           ForEach(0..<7) { index in
                               WelcomeScreen(index: index, isSelected: $selectedTab, hasSeenWelcomeView: $hasSeenWelcomeView)
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
    @Binding var hasSeenWelcomeView: Bool  // Accept the binding
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
        "Welcome to VinoBytes"
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
        "Master over 1,500 interactive flashcards.",
        "Get instant answers with our wine chat powered by OpenAI.",
        "Log and track the wines you taste for easy reference as you study.",
        "Extensive information on grapes, regions, pairings, flaws and more.",
        "Automatically sync your data with iCloud integration.",
        "Wine Education, Byte-Sized."
    ]
    
    var body: some View {
        GeometryReader { geometry in
            VStack(spacing: 30) {
                Spacer() // Push content towards the center vertically
                
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
                .fixedSize(horizontal: false, vertical: true)
                .padding(.bottom, 30) // Adjusted padding
                
                // Image with Conditional Visibility
                if index != 6 || geometry.size.width > 400 { // Show the icon unless it's the last page on a compact screen
                    Image(systemName: sfSymbolNames[index])
                        .resizable()
                        .scaledToFit()
                        .frame(width: calculateIconSize(geometry: geometry), height: calculateIconSize(geometry: geometry))
                        .symbolRenderingMode(.hierarchical)
                        .foregroundColor(symbolColors[index])
                        .padding(.bottom, 30) // Adjusted padding
                        .fontWeight(.thin)
                }
                
             
                // "Get Full Access" Button and Other Elements on the Last Screen
                if index == 6 {
                    VStack(spacing: 20) { // Increased spacing for better separation
                        // First Button with Background
                        Button(action: startFreeTrial) {
                            Text("Start Free Trial")
                                .bold()
                                .font(.headline)
                                .foregroundColor(.latte)
                                .padding()
                                .frame(minWidth: 250) // Ensures minimum width for the button
                                .background(Color.lightMaroon)
                                .cornerRadius(10)
                                .shadow(radius: 6)
                            
                        }
                        
                        // Second Button with Border
                        Button(action: proceedToLimitedVersion) {
                            Text("Access Limited Features")
                                .bold()
                                .font(.headline)
                                .foregroundColor(.lightMaroon)
                                .padding()
                                .frame(minWidth: 250) // Ensures minimum width for the button
                                .overlay(
                                    RoundedRectangle(cornerRadius: 10)
                                        .stroke(Color.lightMaroon, lineWidth: 2)
                                )
                            
                        }
                        
                        // Restore Purchase Button
                        if authViewModel.isLoading {
                            ProgressView("Restoring Purchase...")
                        } else {
                            Button(action: restorePurchases) {
                                Text("Restore Purchase")
                                    .bold()
                                    .font(.headline)
                                    .foregroundColor(.lightMaroon)
                                    .frame(maxWidth: .infinity)
                                    .padding()
                                    
                            }
                        }
                        
                        // Add the disclaimer text here
                        Text("Free trial available for new subscribers only.")
                            .font(.body) // Keeps the font smaller but readable
                                .foregroundColor(.gray) // Subtle color for less emphasis
                                .multilineTextAlignment(.center) // Ensures proper wrapping
                                .fixedSize(horizontal: false, vertical: true) // Allows the text to wrap across multiple lines
                                .padding(.horizontal) // Adds padding to avoid cutoff near edges
                                .padding(.bottom, 5) // Adds space between the button and text
                        
                        // Error or Success Message
                        if let errorMessage = authViewModel.errorMessage {
                            Text(errorMessage)
                                .foregroundColor(.red)
                                .multilineTextAlignment(.center)
                                .padding(.horizontal)
                        } else if authViewModel.hasActiveSubscription {
                            Text("Purchases restored successfully!")
                                .foregroundColor(.lightMaroon)
                                .padding(.horizontal)
                        }
                        
                    }
                    .padding(.horizontal)
                    .padding(.bottom, 30)
                } else {
                    Spacer().frame(height: 70)
                }

               
            }
            .frame(width: geometry.size.width, height: geometry.size.height)
            .opacity(contentOpacity)
            .sheet(isPresented: $isPaywallPresented) {
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
    
    private func calculateIconSize(geometry: GeometryProxy) -> CGFloat {
            let screenWidth = geometry.size.width
            // For smaller screens like iPhone SE, use smaller sizes
            switch screenWidth {
            case ...320: // iPhone SE and similar
                return 150
            case 321...375: // iPhone 8 and similar
                return 200
            default: // Larger devices
                return 250
            }
        }

    
    private func proceedToLimitedVersion() {
            hasSeenWelcomeView = true
            UserDefaults.standard.set(true, forKey: "hasSeenWelcomeView")
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

struct WelcomeScreen_Previews: PreviewProvider {
    @State static var isSelected = 6
    @State static var hasSeenWelcomeView = false
    
    static var previews: some View {
        WelcomeScreen(
            index: 6,
            isSelected: $isSelected,
            hasSeenWelcomeView: $hasSeenWelcomeView
        )
        .environmentObject(AuthViewModel())
    }
}
