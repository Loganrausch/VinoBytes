//
//  LaunchingContentView.swift
//  VinoBytes
//
//  Created by Logan Rausch on 10/6/24.
//

// LaunchingContentView.swift

import SwiftUI

struct LaunchingContentView: View {
    @Binding var isShowingLaunchScreen: Bool
    @EnvironmentObject var authViewModel: AuthViewModel
    @State private var hasSeenWelcomeView: Bool = UserDefaults.standard.bool(forKey: "hasSeenWelcomeView")
    
    var body: some View {
        Group {
            if isShowingLaunchScreen {
                LaunchScreen(isShowingLaunchScreen: $isShowingLaunchScreen)
                    .environment(\.colorScheme, .light)
            } else if authViewModel.isLoading {
                // Show a loading indicator while checking authentication and subscription status
                ProgressView("Loading...")
                    .progressViewStyle(CircularProgressViewStyle())
            } else {
                mainContent
            }
        }
        .onChange(of: authViewModel.hasActiveSubscription) { oldValue, newValue in
            if newValue {
                hasSeenWelcomeView = true
                UserDefaults.standard.set(true, forKey: "hasSeenWelcomeView")
            }
        }
    }
    
    @ViewBuilder
    private var mainContent: some View {
        if authViewModel.isSignedIn {
            if authViewModel.hasActiveSubscription || hasSeenWelcomeView {
                RootView()
                    .environment(\.managedObjectContext, PersistenceController.shared.container.viewContext)
                    .environment(\.colorScheme, .light)
            } else {
                WelcomeView(hasSeenWelcomeView: $hasSeenWelcomeView)
            }
        } else {
            SignInView()
        }
    }
}

struct LaunchingContentView_Previews: PreviewProvider {
    static var previews: some View {
        LaunchingContentView(isShowingLaunchScreen: .constant(true))
            .environmentObject(AuthViewModel())
    }
}
