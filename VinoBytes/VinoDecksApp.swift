//
//  VinoDecksApp.swift
//  VinoDecks
//
//  Created by Logan Rausch on 3/1/24.
//

import SwiftUI

@main
struct VinoDecksApp: App {
    @State private var isShowingLaunchScreen = true

    var body: some Scene {
        WindowGroup {
            if isShowingLaunchScreen {
                LaunchScreen(isShowingLaunchScreen: $isShowingLaunchScreen)
                    .environment(\.colorScheme, .light)  // Apply light mode to the launch screen
            } else {
                ContentView()
                    .environment(\.managedObjectContext, PersistenceController.shared.container.viewContext)
                    .environment(\.colorScheme, .light)  // Ensure light mode continues to the main content
            }
        }
        .environment(\.colorScheme, .light)  // Forces light mode for all views in the app
    }
}

struct LaunchScreen: View {
    @State private var opacity: Double = 0  // Single opacity variable for both text and image
    @Binding var isShowingLaunchScreen: Bool

    var body: some View {
        ZStack {
            Color(.systemBackground)
                .edgesIgnoringSafeArea(.all)

            VStack(spacing: 20) {
                Image("vinobytes_logo_final")
                    .resizable()
                    .scaledToFit()
                    .frame(width: 200, height: 200)
                    .opacity(opacity)  // Use the same opacity for image and text

                Text("VinoBytes")
                    .font(.largeTitle)
                    .fontWeight(.bold)
                    .foregroundColor(.primary)
                    .opacity(opacity)  // Shared opacity for uniform fade-in

                Text("Wine Education in Small Bytes")
                    .font(.title3)
                    .foregroundColor(.primary)
                    .opacity(opacity)  // Shared opacity for uniform fade-in
            }
            .onAppear {
                withAnimation(Animation.easeIn(duration: 2)) {
                    self.opacity = 1  // Fade in everything together
                }
                DispatchQueue.main.asyncAfter(deadline: .now() + 3) {
                    withAnimation(Animation.easeOut(duration: 1)) {
                        self.opacity = 0  // Fade out everything together
                    }
                    DispatchQueue.main.asyncAfter(deadline: .now() + 1) {
                        isShowingLaunchScreen = false
                    }
                }
            }
        }
    }
}

