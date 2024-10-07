//
//  VinoDecksApp.swift
//  VinoDecks
//
//  Created by Logan Rausch on 3/1/24.
//

import SwiftUI
import RevenueCat

@main
struct VinoBytesApp: App {
    @State private var isShowingLaunchScreen = true
    @ObservedObject private var subscriptionManager = SubscriptionManager.shared
    @StateObject private var signInViewModel = SignInWithAppleViewModel()
    
    init() {
        configureNavigationBar()
    }
    
    var body: some Scene {
        WindowGroup {
            LaunchingContentView(isShowingLaunchScreen: $isShowingLaunchScreen)
                .environmentObject(subscriptionManager)
                .environmentObject(signInViewModel)
                .onAppear {
                 //    Handle user login with RevenueCat
            //        if let storedUserID = KeychainHelper.retrieve(forKey: "appleUserID") {
            //           signInViewModel.userID = storedUserID
            //            Purchases.shared.logIn(storedUserID) { customerInfo, created, error in
            //                if let error = error {
             //                   print("RevenueCat logIn error on app launch: \(error.localizedDescription)")
             //               } else {
             //                   print("User logged in with RevenueCat ID on app launch: \(storedUserID), created: \(created)")
             //                   signInViewModel.isSignedIn = true
              //              }
              //          }
              //      }
                }
                .environment(\.colorScheme, ColorScheme.light)
        }
    }
    
    private func configureNavigationBar() {
        let appearance = UINavigationBarAppearance()
        appearance.configureWithOpaqueBackground() // Ensures the background is not transparent
        appearance.backgroundColor = UIColor(Color("Maroon")) // Dark maroon color
        appearance.titleTextAttributes = [.foregroundColor: UIColor.latte]
        appearance.largeTitleTextAttributes = [.foregroundColor: UIColor.latte]
        
        // Apply the appearance to all navigation bar types
        UINavigationBar.appearance().standardAppearance = appearance
        UINavigationBar.appearance().compactAppearance = appearance
        UINavigationBar.appearance().scrollEdgeAppearance = appearance
    }
}
