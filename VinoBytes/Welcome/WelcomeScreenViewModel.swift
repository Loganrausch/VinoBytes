//
//  WelcomeScreenViewModel.swift
//  VinoBytes
//
//  Created by Logan Rausch on 5/4/25.
//

// WelcomeScreenViewModel.swift
import SwiftUI
import RevenueCat

/// ViewModel for WelcomeScreen, handling UI state and business logic
@MainActor
class WelcomeScreenViewModel: ObservableObject {
    // MARK: - Published UI State
    @Published var contentOpacity: Double = 0.0
    @Published var isPaywallPresented: Bool = false

    // MARK: - Animation Methods
    func fadeIn() {
        withAnimation(.easeInOut(duration: 1.2)) {
            contentOpacity = 1.0
        }
    }

    func fadeOut() {
        withAnimation(.easeInOut(duration: 0.3)) {
            contentOpacity = 0.0
        }
    }

    // MARK: - Subscription Methods
    func startFreeTrial() {
        Purchases.shared.getOfferings { (offerings, error) in
            if let offerings = offerings,
               let offering = offerings.current,
               !offering.availablePackages.isEmpty {
                DispatchQueue.main.async {
                    self.isPaywallPresented = true
                }
            } else if let error = error {
                print("Error fetching offerings: \(error.localizedDescription)")
            }
        }
    }

    func proceedToLimitedVersion(hasSeenWelcomeView: Binding<Bool>) {
        hasSeenWelcomeView.wrappedValue = true
        UserDefaults.standard.set(true, forKey: "hasSeenWelcomeView")
    }

    func restorePurchases(authViewModel: AuthViewModel) {
        authViewModel.restorePurchases()
    }
}
