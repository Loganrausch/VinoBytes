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

class AuthViewModel: NSObject, ObservableObject, PurchasesDelegate {
    // MARK: - Logger
    private let logger = Logger(subsystem: "com.yourapp.auth", category: "AuthViewModel")
    
    // MARK: - Published Properties
    @Published var errorMessage: String? = nil

    @Published var isSignedIn: Bool = false {
        didSet {
            self.logger.info("isSignedIn changed to \(self.isSignedIn)")
        }
    }

    @Published var hasActiveSubscription: Bool = false {
        didSet {
            self.logger.info("hasActiveSubscription changed to \(self.hasActiveSubscription)")
        }
    }

    @Published var isFetchingSubscription: Bool = false {
        didSet {
            self.logger.info("isFetchingSubscription changed to \(self.isFetchingSubscription)")
        }
    }

    @Published var isLoading: Bool = true {
        didSet {
            self.logger.info("isLoading changed to \(self.isLoading)")
        }
    }
    
    // MARK: - Initialization
    override init() {
        super.init()
        configureRevenueCat()
        
        // Attempt to auto sign-in
        attemptAutoSignIn { [weak self] in
            // After attempting auto sign-in, sync purchases
            Purchases.shared.syncPurchases { [weak self] customerInfo, error in
                DispatchQueue.main.async {
                    guard let self = self else { return }
                    
                    if let customerInfo = customerInfo {
                        self.hasActiveSubscription = customerInfo.entitlements.all["full_access"]?.isActive ?? false
                        // Use Purchases.shared.isAnonymous instead of customerInfo.isAnonymous
                        self.isSignedIn = !Purchases.shared.isAnonymous
                    } else {
                        // Handle error if needed
                        self.hasActiveSubscription = false
                        // Keep isSignedIn as set by attemptAutoSignIn
                    }
                    self.isLoading = false
                }
            }
        }
    }
    
    // MARK: - RevenueCat Configuration
    private func configureRevenueCat() {
        Purchases.configure(withAPIKey: "appl_DRafRrwMiDiUXCqUuZzkUKJZiOR")
        Purchases.shared.delegate = self
    }
    
    // MARK: - Sign In with Apple
    func handleSignIn(authorization: ASAuthorization) {
        guard let appleIDCredential = authorization.credential as? ASAuthorizationAppleIDCredential else {
            self.errorMessage = "Invalid credentials."
            return
        }

        self.isLoading = true
        self.isFetchingSubscription = true // Start fetching subscription

        let userID = appleIDCredential.user

        do {
            try KeychainHelper.save(userID, forKey: "appleUserID")
        } catch {
            logger.error("Keychain save error: \(error.localizedDescription)")
            self.errorMessage = "Failed to save user information securely."
            self.isLoading = false
            self.isFetchingSubscription = false // Fetching completed
            return
        }

        Purchases.shared.logIn(userID) { [weak self] customerInfo, created, error in
            DispatchQueue.main.async {
                guard let self = self else { return }
                
                if let error = error {
                    self.logger.error("RevenueCat logIn error: \(error.localizedDescription)")
                    self.errorMessage = "Failed to sign in. Please try again."
                    self.isFetchingSubscription = false // Fetching completed
                    self.isLoading = false
                } else {
                    // Fetch the latest CustomerInfo
                    Purchases.shared.getCustomerInfo { [weak self] customerInfo, error in
                        DispatchQueue.main.async {
                            guard let self = self else { return }
                            
                            if let error = error {
                                self.logger.error("Error fetching CustomerInfo: \(error.localizedDescription)")
                                self.errorMessage = "Failed to fetch subscription status."
                                self.hasActiveSubscription = false
                            }
                            if let customerInfo = customerInfo {
                                self.hasActiveSubscription = customerInfo.entitlements.all["full_access"]?.isActive ?? false
                                self.isSignedIn = !Purchases.shared.isAnonymous
                            } else {
                                self.logger.error("CustomerInfo is nil after getCustomerInfo")
                                self.errorMessage = "Failed to fetch customer info."
                                self.hasActiveSubscription = false
                            }
                            self.isFetchingSubscription = false // Fetching completed
                            self.isLoading = false
                        }
                    }
                }
            }
        }
    }

    func handleSignInError(_ error: Error) {
        logger.error("Sign in with Apple failed: \(error.localizedDescription)")
        DispatchQueue.main.async { [weak self] in
            guard let self = self else { return }
            self.errorMessage = "Sign in failed. Please try again."
            self.isLoading = false
        }
    }
    
    // MARK: - Attempt Auto Sign-In
    private func attemptAutoSignIn(completion: @escaping () -> Void) {
        self.isFetchingSubscription = true // Start fetching subscription
        if let userID = KeychainHelper.retrieve(forKey: "appleUserID") {
            Purchases.shared.logIn(userID) { [weak self] customerInfo, _, error in
                DispatchQueue.main.async {
                    guard let self = self else { return }
                    
                    if let error = error {
                        self.logger.error("RevenueCat logIn error: \(error.localizedDescription)")
                        self.errorMessage = "Failed to auto sign in. Please sign in again."
                        self.isSignedIn = false
                    } else {
                        // Use Purchases.shared.isAnonymous instead of customerInfo.isAnonymous
                        self.isSignedIn = !Purchases.shared.isAnonymous
                    }
                    self.isFetchingSubscription = false // Fetching completed
                    completion()
                }
            }
        } else {
            self.logger.info("No existing userID found in Keychain.")
            DispatchQueue.main.async { [weak self] in
                guard let self = self else { return }
                self.isSignedIn = false
                self.isFetchingSubscription = false // Fetching completed
                completion()
            }
        }
    }
    
    // MARK: - Restore Purchases
    func restorePurchases(completion: @escaping (Bool) -> Void) {
        Purchases.shared.restorePurchases { [weak self] customerInfo, error in
            DispatchQueue.main.async {
                guard let self = self else {
                    completion(false)
                    return
                }
                
                self.isLoading = false
                if let error = error {
                    self.logger.error("Restore failed: \(error.localizedDescription)")
                    self.errorMessage = "Restore failed. Please try again."
                    completion(false)
                } else if let customerInfo = customerInfo {
                    self.hasActiveSubscription = customerInfo.entitlements.all["full_access"]?.isActive ?? false
                    completion(self.hasActiveSubscription)
                } else {
                    completion(false)
                }
            }
        }
    }
    
    // MARK: - PurchasesDelegate
    func purchases(_ purchases: Purchases, receivedUpdated customerInfo: CustomerInfo) {
        DispatchQueue.main.async { [weak self] in
            guard let self = self else { return }
            self.hasActiveSubscription = customerInfo.entitlements.all["full_access"]?.isActive ?? false
            // Use Purchases.shared.isAnonymous instead of customerInfo.isAnonymous
            self.isSignedIn = !Purchases.shared.isAnonymous
        }
    }
    
    // MARK: - Logout
    func logout() {
        self.isLoading = true
        
        // Log out from RevenueCat
        Purchases.shared.logOut { [weak self] customerInfo, error in
            DispatchQueue.main.async {
                guard let self = self else { return }
                
                if let error = error {
                    self.logger.error("Failed to log out from RevenueCat: \(error.localizedDescription)")
                    self.errorMessage = "Failed to log out. Please try again."
                    self.isLoading = false
                } else {
                    // Delete the userID from the Keychain
                    KeychainHelper.delete(forKey: "appleUserID")
                    
                    // Reset authentication state
                    self.isSignedIn = false
                    self.hasActiveSubscription = false
                    self.isLoading = false
                    
                    // Optionally, clear other user data if needed
                }
            }
        }
    }
}
