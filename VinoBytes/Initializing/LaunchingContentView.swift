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
        Group {
                    if isShowingLaunchScreen {
                        LaunchScreen(isShowingLaunchScreen: $isShowingLaunchScreen)
                            .environment(\.colorScheme, ColorScheme.light)
                    } else {
                        if !signInViewModel.isSignedIn {
                            SignInView()
                        } else {
                            if subscriptionManager.hasActiveSubscription || subscriptionManager.shouldNavigateToRoot {
                                RootView()
                                    .environment(\.managedObjectContext, PersistenceController.shared.container.viewContext)
                                    .environment(\.colorScheme, ColorScheme.light)
                            } else {
                                WelcomeView()
                            }
                        }
                    }
                }
                .animation(.easeInOut, value: isShowingLaunchScreen)
                .animation(.easeInOut, value: signInViewModel.isSignedIn)
                .animation(.easeInOut, value: subscriptionManager.hasActiveSubscription)
                .animation(.easeInOut, value: subscriptionManager.shouldNavigateToRoot)  // Observe navigation trigger
                .onChange(of: subscriptionManager.shouldNavigateToRoot) { newValue, _ in
                    if newValue {
                        // Reset the flag after navigation
                        DispatchQueue.main.async {
                            subscriptionManager.shouldNavigateToRoot = false
                        }
                    }
                }
            }
        }
