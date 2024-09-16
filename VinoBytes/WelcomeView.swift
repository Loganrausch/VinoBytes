//
//  WelcomeScreen.swift
//  VinoDecks
//
//  Created by Logan Rausch on 3/21/24.
//

import SwiftUI

struct WelcomeView: View {
    @State private var selectedTab = 0
    let totalTabs = 6
    
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
                            .padding(.trailing, 30)
                    }
                }
                .frame(height: 65) // Standard height for top bars
                .background(Color("Maroon")) // Replace with your custom maroon color
            
            
            // Tab View Content
            TabView(selection: $selectedTab) {
                ForEach(0..<6) { index in
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
                        .frame(height: 60) // Adjust the height as needed
                    
                    // Custom Page Indicator
                    HStack(spacing: 8) {
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
        "Get Started"
    ]
    
    let imageNames = [
        "dashboard",
        "flashcards",
        "aichat",
        "mywines",
        "library",
        "welcome_final"
    ]
    
    let descriptions = [
        "Access all your wine learning tools and progress from one convenient place.",
        "Dive into over 2,000 interactive flashcards covering 14 wine regions from around the world.",
        "Ask questions and get instant answers with our wine chat powered by OpenAI.",
        "Log and track the wines you taste in the same app that you study.",
        "Consult our extensive database for detailed information on wine grapes, regions, pairing suggestions, and more.",
        "Start your wine journey today with a 1 week free trial!"
    ]

    var body: some View {
        VStack(alignment: .center, spacing: 20) {
           
            Spacer() // This maintains some space at the bottom as well
            
            Text(titles[index])
                .font(.largeTitle)
                .padding(.horizontal)
                .multilineTextAlignment(.center) // Center the description
            Text(descriptions[index])
                .font(.title3)
                .padding(.horizontal)
                .multilineTextAlignment(.center) // Center the description
            Image(imageNames[index]) // Use images from your asset catalog
                .resizable()
                .scaledToFit()
                .frame(maxWidth: 400, maxHeight: 500)
            if index == 5 {
                Button("Start Exploring", action: startFreeTrial)
                    .padding()
                    .foregroundColor(.white)
                    .background(Color("LightMaroon"))
                    .cornerRadius(8)
            }
            Spacer() // This maintains some space at the bottom as well
        }
        .padding()
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
