//
//  LaunchingContentView.swift
//  VinoBytes
//
//  Created by Logan Rausch on 10/6/24.
//

import SwiftUI

struct LaunchingContentView: View {
    @Binding var isShowingLaunchScreen: Bool
    @EnvironmentObject var subscriptionManager: SubscriptionManager
    @EnvironmentObject var signInViewModel: SignInWithAppleViewModel

    var body: some View {
        if isShowingLaunchScreen {
            LaunchScreen(isShowingLaunchScreen: $isShowingLaunchScreen)
                .environment(\.colorScheme, ColorScheme.light)
                .environmentObject(FlashcardManager.shared)
        } else if !subscriptionManager.hasActiveSubscription {
            SignInView()
                .environmentObject(signInViewModel)
        } else {
            RootView()
                .environment(\.managedObjectContext, PersistenceController.shared.container.viewContext)
                .environment(\.colorScheme, ColorScheme.light)
                .environmentObject(FlashcardManager.shared)
        }
    }
}

