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
    @AppStorage("isDarkMode") private var isDarkMode: Bool = UITraitCollection.current.userInterfaceStyle == .dark

    var body: some Scene {
        WindowGroup {
            if isShowingLaunchScreen {
                LaunchScreen(isShowingLaunchScreen: $isShowingLaunchScreen)
            } else {
                ContentView() // Use ContentView here
                    .environment(\.managedObjectContext, PersistenceController.shared.container.viewContext)
                    .onAppear {
                        if let windowScene = UIApplication.shared.connectedScenes.first as? UIWindowScene {
                            if let window = windowScene.windows.first(where: { $0.isKeyWindow }) {
                                window.overrideUserInterfaceStyle = isDarkMode ? .dark : .light
                            }
                        }
                    }
            }
        }
    }
}

    
struct LaunchScreen: View {
    @State private var opacity: Double = 0
    @Binding var isShowingLaunchScreen: Bool

    var body: some View {
        ZStack {
            Color(.systemBackground)
                .edgesIgnoringSafeArea(.all)

            VStack(spacing: 10) {
                Text("VinoBytes")
                    .font(.largeTitle)
                    .fontWeight(.bold)
                    .foregroundColor(.primary)
                    .opacity(opacity)
                
                Text("Wine Education in Small Bites.")
                    .font(.title3)
                    .foregroundColor(.primary)
                    .opacity(opacity)
            }
            .onAppear {
                withAnimation(Animation.easeIn(duration: 2)) {
                    self.opacity = 1
                }
                DispatchQueue.main.asyncAfter(deadline: .now() + 3) {
                    withAnimation(Animation.easeOut(duration: 1)) {
                        self.opacity = 0
                    }
                    DispatchQueue.main.asyncAfter(deadline: .now() + 2) {
                        isShowingLaunchScreen = false
                    }
                }
            }
        }
    }
}
