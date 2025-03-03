//
//  VinoDecksApp.swift
//  VinoDecks
//
//  Created by Logan Rausch on 3/1/24.
//

import SwiftUI
import RevenueCat
import UserNotifications

@main
struct VinoBytesApp: App {
    @UIApplicationDelegateAdaptor(AppDelegate.self) var appDelegate
    
    @StateObject var authViewModel = AuthViewModel()
    @StateObject var userProfileViewModel = UserProfileViewModel()  // <-- Create your view model here
    @StateObject var refreshNotifier = RefreshNotifier()  // Create it once here
    @State private var isShowingLaunchScreen = true
    
    init() {
        configureNavigationBar()
        registerForPushNotifications()  // This triggers the permission prompt.
    }
    
    var body: some Scene {
        WindowGroup {
            LaunchingContentView(isShowingLaunchScreen: $isShowingLaunchScreen)
                .environmentObject(authViewModel)
                .environmentObject(userProfileViewModel)  // <-- Inject it into the environment here
                .environmentObject(refreshNotifier)  // Inject into environment
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
        UIPageControl.appearance().currentPageIndicatorTintColor = UIColor(named: "Maroon") ?? .red
        UIPageControl.appearance().pageIndicatorTintColor = UIColor(named: "TransparentMaroon") ?? .gray
    }
    
    private func registerForPushNotifications() {
            UNUserNotificationCenter.current().requestAuthorization(options: [.alert, .badge, .sound]) { granted, error in
                if granted {
                    DispatchQueue.main.async {
                        UIApplication.shared.registerForRemoteNotifications()
                    }
                } else if let error = error {
                    print("Push notification authorization error: \(error.localizedDescription)")
                }
            }
        }
    }
