//
//  WelcomeScreen.swift
//  VinoDecks
//
//  Created by Logan Rausch on 3/21/24.
//

import SwiftUI

struct WelcomeView: View {
    @State private var selectedTab = 0
    let totalTabs = 7
    
    var body: some View {
            VStack(spacing: 10) {
                // Top Navigation Bar with Skip Button
                HStack {
                    Spacer()
                    Button(action: {
                        // Navigate to the last onboarding page
                        selectedTab = totalTabs - 1
                    }) {
                        Text("Skip")
                            .foregroundColor(.latte)
                            .padding(.trailing, 40)
                    }
                }
                .frame(height: 70) // Standard height for top bars
                .background(Color("Maroon")) // Replace with your custom maroon color
            
            
            // Tab View Content
            TabView(selection: $selectedTab) {
                ForEach(0..<7) { index in
                    WelcomeScreen(index: index, isSelected: $selectedTab)
                        .tag(index)
                }
            }
            .tabViewStyle(PageTabViewStyle())
            .frame(maxHeight: .infinity) // Ensures the TabView does not take over the entire space
            
                
                // Bottom Navigation Bar with Custom Page Indicator
                ZStack {
                    Rectangle()
                        .fill(Color("Maroon")) // Replace with your custom maroon color
                        .frame(height: 70) // Adjust the height as needed
                    
                    // Custom Page Indicator
                    HStack(spacing: 10) {
                        ForEach(0..<totalTabs) { index in
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

    // Arrays to hold your content data
    let titles = [
        "Dashboard",
        "Flashcards",
        "Vino Chat",
        "My Wines",
        "Library",
        "iCloud Sync",
        "Get Started"
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
        "Access your learning tools and track progress all in one convenient place.",
        "Master over 2,000 interactive flashcards, optimized with spaced repetition for effective learning.",
        "Ask questions and get instant answers with our wine chat powered by OpenAI.",
        "Log and track the wines you taste for easy reference as you study.",
        "Extensive information on grapes, regions, pairings, flaws and more.",
        "Automatically sync your data with iCloud integration.",
        "Start your wine journey today with a 1 week free trial!"
    ]

    var body: some View {
            VStack(alignment: .center, spacing: 10) {
                Spacer()
                
                // Grouped Title and Description
                VStack(alignment: .center, spacing: 18) {
                    Text(titles[index])
                        .font(.largeTitle)
                        .padding(.horizontal)
                        .multilineTextAlignment(.center)
                    Text(descriptions[index])
                        .font(.title2)
                        .padding(.horizontal)
                        .multilineTextAlignment(.center)
                }
                .padding(.bottom, 55) // Adjust spacing between text group and image here
                
                Image(systemName: sfSymbolNames[index])
                
                    .resizable()
                    .scaledToFit()
                    .frame(maxWidth: 250, maxHeight: 250)
                    .symbolRenderingMode(.hierarchical)
                    .foregroundColor(symbolColors[index])
                    .padding()
                    .fontWeight(.thin)
                
                // Optional Button for the Last Screen
                if index == 6 {
                    Button("LEARN", action: startFreeTrial)
                        .padding() // Adjust padding as needed for the internal content area
                        .frame(width: 110, height: 110) // Ensures the button is circular by making width and height equal
                        .foregroundColor(.maroon)
                        .font(.title3)
                        .background(Color.white) // Background color of the button
                        .clipShape(Circle()) // Clips the background to a circle
                        .overlay( // Adds a border/stroke
                            Circle().stroke(Color.lightMaroon, lineWidth: 3) // Adjust color and line width for stroke
                        )
                        .shadow(color: .gray, radius: 10, x: 0, y: 4) // Adds a shadow
                        .padding(.top, 50)
                }
                
                Spacer()
            }
            .padding(.bottom, 80)
            .opacity(contentOpacity)
            .onChange(of: isSelected) { newValue in
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
        
        private func fadeIn() {
            withAnimation(.easeInOut(duration: 1.5)) {
                contentOpacity = 1.0
            }
        }
        
        private func fadeOut() {
            withAnimation(.easeInOut(duration: 0.3)) {
                contentOpacity = 0.0
            }
        }
        
        func startFreeTrial() {
            // Implement the free trial start logic here
        }
    }

    struct WelcomeView_Previews: PreviewProvider {
        static var previews: some View {
            WelcomeView()
        }
    }
