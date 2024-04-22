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
            WelcomeScreen(text: "Welcome to Vino Decks",
                          imageName: "welcome1",
                          description: "The Ultimate Wine Education App",
                          showActionButton: false)
            WelcomeScreen(text: "Flashcards",
                          imageName: "welcome1",
                          description: "Dive into over 3,000 interactive flashcards covering a wide range of wine topics from around the world.",
                          showActionButton: false)
            WelcomeScreen(text: "Spaced Repetition Learning",
                          imageName: "welcome1",
                          description: "Our flashcards use spaced repetition, a scientifically proven method to improve memory retention and recall.",
                          showActionButton: false)
            WelcomeScreen(text: "Quizzes",
                          imageName: "welcome1",
                          description: "Test your wine knowledge with quizzes designed to challenge and educate.",
                          showActionButton: false)
            WelcomeScreen(text: "My Wines",
                          imageName: "welcome1",
                          description: "Log and track the wines you taste in the same app that you study.",
                          showActionButton: false)
            WelcomeScreen(text: "Wine Blog",
                          imageName: "welcome2",
                          description: "Stay up to date with weekly articles on new wine topics, trends, and insights.",
                          showActionButton: false)
            WelcomeScreen(text: "Get Started",
                          imageName: "welcome3",
                          description: "Start your wine journey today with a 1 week free trial!",
                          showActionButton: true)
        }
        .tabViewStyle(PageTabViewStyle())
        .indexViewStyle(PageIndexViewStyle(backgroundDisplayMode: .always))
    }
}


struct WelcomeScreen: View {
    var text: String
    var imageName: String
    var description: String
    var showActionButton: Bool
    
    var body: some View {
        VStack {
            Image(imageName)
                .resizable()
                .scaledToFit()
            Text(text)
                .font(.title)
                .padding()
            Text(description)
                .font(.body)
                .padding()
            if showActionButton {
                Button(action: {
                    // Action to navigate to the main part of the app
                }) {
                    Text("Start Exploring")
                        .padding()
                        .foregroundColor(.white)
                        .background(Color(red: 128/255, green: 0, blue: 0))
                        .cornerRadius(8)
                }
            }
        }
    }
}


struct WelcomeView_Previews: PreviewProvider {
    static var previews: some View {
        WelcomeView()
    }
}


