//
//  AuthViewModel.swift
//  VinoBytes
//
//  Created by Logan Rausch on 10/9/24.
//

// AuthViewModel.swift



import Foundation
import AuthenticationServices
import RevenueCat
import SwiftUI
import os

@MainActor
class AuthViewModel: NSObject, ObservableObject, PurchasesDelegate {
    // MARK: - Logger
    private let logger = Logger(subsystem: "com.yourapp.auth", category: "AuthViewModel")
    
    // MARK: - Published Properties
    @Published var errorMessage: String? = nil
    @Published var isLoading: Bool = true
    @Published var isSignedIn: Bool = false
    @Published var hasActiveSubscription: Bool = false
    
    // MARK: - Initialization
    override init() {
        super.init()
        configureRevenueCat()
        Purchases.shared.delegate = self
        initializeUserSession()
    }
    
    // MARK: - RevenueCat Configuration
    private func configureRevenueCat() {
        Purchases.configure(withAPIKey: "appl_DRafRrwMiDiUXCqUuZzkUKJZiOR")
    }
    
    // MARK: - Initialize User Session
    private func initializeUserSession() {
        Purchases.shared.getCustomerInfo { [weak self] customerInfo, error in
            guard let self = self else { return }
            if let error = error {
                self.logger.error("Error fetching purchaser info: \(error.localizedDescription)")
                self.errorMessage = "Unable to fetch subscription status."
                self.isSignedIn = false
            } else if let customerInfo = customerInfo {
                // Use Purchases.shared.isAnonymous instead of customerInfo.isAnonymous
                self.isSignedIn = !Purchases.shared.isAnonymous
                self.hasActiveSubscription = customerInfo.entitlements["full_access"]?.isActive ?? false
            }
            self.isLoading = false
        }
    }
    
    // MARK: - Sign In with Apple
    func handleSignIn(authorization: ASAuthorization) {
        guard let appleIDCredential = authorization.credential as? ASAuthorizationAppleIDCredential else {
            self.errorMessage = "Invalid credentials."
            return
        }
        
        // Check if the user is already signed in
          if isSignedIn {
              self.logger.info("User is already signed in.")
              self.isLoading = false
              return
          }

        self.isLoading = true
        let userID = appleIDCredential.user
        
        Purchases.shared.logIn(userID) { [weak self] customerInfo, created, error in
            guard let self = self else { return }
            if let error = error {
                self.logger.error("RevenueCat logIn error: \(error.localizedDescription)")
                self.errorMessage = "Failed to sign in. Please try again."
            } else if let customerInfo = customerInfo {
                self.hasActiveSubscription = customerInfo.entitlements["full_access"]?.isActive ?? false
                // Use Purchases.shared.isAnonymous instead of customerInfo.isAnonymous
                self.isSignedIn = !Purchases.shared.isAnonymous
            }
            self.isLoading = false
        }
    }
    
    // MARK: - Handle Sign In Error
    func handleSignInError(_ error: Error) {
        logger.error("Sign in with Apple failed: \(error.localizedDescription)")
        self.errorMessage = "Sign in failed. Please try again."
        self.isLoading = false
    }
    
    // MARK: - Restore Purchases
    func restorePurchases() {
        self.isLoading = true
        Purchases.shared.restorePurchases { [weak self] customerInfo, error in
            guard let self = self else { return }
            if let error = error {
                self.logger.error("Restore failed: \(error.localizedDescription)")
                self.errorMessage = "Restore failed. Please try again."
            } else if let customerInfo = customerInfo {
                self.hasActiveSubscription = customerInfo.entitlements["full_access"]?.isActive ?? false
                // Use Purchases.shared.isAnonymous instead of customerInfo.isAnonymous
                self.isSignedIn = !Purchases.shared.isAnonymous
            }
            self.isLoading = false
        }
    }
    
    // MARK: - PurchasesDelegate
    nonisolated func purchases(_ purchases: Purchases, receivedUpdated customerInfo: CustomerInfo) {
        // Since this method is nonisolated, we need to dispatch updates to the main actor
        Task { @MainActor in
            self.hasActiveSubscription = customerInfo.entitlements["full_access"]?.isActive ?? false
            self.isSignedIn = !Purchases.shared.isAnonymous
        }
    }
    
    // MARK: - Logout
    func logout() {
        self.isLoading = true
        Purchases.shared.logOut { [weak self] customerInfo, error in
            guard let self = self else { return }
            if let error = error {
                self.logger.error("Failed to log out from RevenueCat: \(error.localizedDescription)")
                self.errorMessage = "Failed to log out. Please try again."
            } else {
                self.isSignedIn = false
                self.hasActiveSubscription = false
            }
            self.isLoading = false
        }
    }
}
