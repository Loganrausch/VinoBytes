//
//  WelcomeScreen.swift
//  VinoDecks
//
//  Created by Logan Rausch on 3/21/24.
//

import Foundation

import SwiftUI

struct WelcomeView: View {
    var body: some View {
        TabView {
            WelcomeScreen(text: "Welcome to VinoBytes",
                                      imageName: "welcome1",
                                      description: "The Ultimate Wine Education App",
                                      showActionButton: false)
                        WelcomeScreen(text: "Dashboard",
                                      imageName: "dashboard",
                                      description: "Access all your wine learning tools and progress from one convenient place.",
                                      showActionButton: false)
                        WelcomeScreen(text: "Flashcards",
                                      imageName: "flashcards",
                                      description: "Dive into over 2,000 interactive flashcards covering 14 wine regions from around the world.",
                                      showActionButton: false)
                        WelcomeScreen(text: "AI Chat",
                                      imageName: "ai_chat",
                                      description: "Ask questions and get instant answers with our wine chat powered by OpenAI.",
                                      showActionButton: false)
                        WelcomeScreen(text: "My Wines",
                                      imageName: "my_wines",
                                      description: "Log and track the wines you taste in the same app that you study.",
                                      showActionButton: false)
                        WelcomeScreen(text: "Library",
                                      imageName: "Library",
                                      description: "Consult our extensive database for detailed information on wine grapes, regions, pairing suggestions, and more.",
                                      showActionButton: false)
                        WelcomeScreen(text: "Get Started",
                                      imageName: "welcome_final",
                                      description: "Start your wine journey today with a 1 week free trial!",
                                      showActionButton: true)
                                      
                    }
        .tabViewStyle(PageTabViewStyle())
        .indexViewStyle(PageIndexViewStyle(backgroundDisplayMode: .always))
    }
}


struct WelcomeScreen: View {
    let text: String
    let imageName: String
    let description: String
    let showActionButton: Bool
    var action: (() -> Void)? = nil
    
    var body: some View {
        VStack(alignment: .center, spacing: 20) {
            Image(imageName)
                .resizable()
                .scaledToFit()
                .frame(maxWidth: 300, maxHeight: 200) // Set appropriate size for your images
            Text(text)
                .font(.title)
                .padding(.horizontal)
            Text(description)
                .font(.body)
                .padding(.horizontal)
            if showActionButton {
                Button("Start Exploring", action: action ?? {})
                    .padding()
                    .foregroundColor(.white)
                    .background(Color(red: 128/255, green: 0, blue: 0))
                    .cornerRadius(8)
            }
        }
        .padding()
    }
}

struct WelcomeView_Previews: PreviewProvider {
    static var previews: some View {
        WelcomeView()
    }
}


