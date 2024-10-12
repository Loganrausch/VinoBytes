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

class AuthViewModel: NSObject, ObservableObject, PurchasesDelegate {
    // MARK: - Published Properties
    @Published var isSignedIn: Bool = false
    @Published var hasActiveSubscription: Bool = false
    @Published var errorMessage: String? = nil
    @Published var isLoading: Bool = true
    
    // MARK: - Initialization
    override init() {
        super.init()
        configureRevenueCat()
        
        // Attempt to auto sign-in
        attemptAutoSignIn { [weak self] in
            // After attempting auto sign-in, sync purchases
            Purchases.shared.syncPurchases { [weak self] customerInfo, error in
                DispatchQueue.main.async {
                    if let customerInfo = customerInfo {
                        self?.hasActiveSubscription = customerInfo.entitlements.all["full_access"]?.isActive ?? false
                        // Use Purchases.shared.isAnonymous instead of customerInfo.isAnonymous
                        self?.isSignedIn = !Purchases.shared.isAnonymous
                    } else {
                        // Handle error if needed
                        self?.hasActiveSubscription = false
                        // Keep isSignedIn as set by attemptAutoSignIn
                    }
                    self?.isLoading = false
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
        
        let userID = appleIDCredential.user
        
        do {
            try KeychainHelper.save(userID, forKey: "appleUserID")
        } catch {
            print("Keychain save error: \(error.localizedDescription)")
            self.errorMessage = "Failed to save user information securely."
            self.isLoading = false
            return
        }
        
        Purchases.shared.logIn(userID) { [weak self] customerInfo, _, error in
            DispatchQueue.main.async {
                if let error = error {
                    print("RevenueCat logIn error: \(error.localizedDescription)")
                    self?.errorMessage = "Failed to sign in. Please try again."
                    self?.isLoading = false
                } else if let customerInfo = customerInfo {
                    self?.hasActiveSubscription = customerInfo.entitlements.all["full_access"]?.isActive ?? false
                    // Use Purchases.shared.isAnonymous instead of customerInfo.isAnonymous
                    self?.isSignedIn = !Purchases.shared.isAnonymous
                    self?.isLoading = false
                }
            }
        }
    }
    
    func handleSignInError(_ error: Error) {
        print("Sign in with Apple failed: \(error.localizedDescription)")
        DispatchQueue.main.async {
            self.errorMessage = "Sign in failed. Please try again."
            self.isLoading = false
        }
    }
    
    // MARK: - Attempt Auto Sign-In
    private func attemptAutoSignIn(completion: @escaping () -> Void) {
        if let userID = KeychainHelper.retrieve(forKey: "appleUserID") {
            Purchases.shared.logIn(userID) { [weak self] customerInfo, _, error in
                DispatchQueue.main.async {
                    if let error = error {
                        print("RevenueCat logIn error: \(error.localizedDescription)")
                        self?.errorMessage = "Failed to auto sign in. Please sign in again."
                        self?.isSignedIn = false
                    } else {
                        // Use Purchases.shared.isAnonymous instead of customerInfo.isAnonymous
                        self?.isSignedIn = !Purchases.shared.isAnonymous
                    }
                    completion()
                }
            }
        } else {
            print("No existing userID found in Keychain.")
            DispatchQueue.main.async {
                self.isSignedIn = false
                completion()
            }
        }
    }
    
    // MARK: - Restore Purchases
    func restorePurchases(completion: @escaping (Bool) -> Void) {
        Purchases.shared.restorePurchases { [weak self] customerInfo, error in
            DispatchQueue.main.async {
                self?.isLoading = false
                if let error = error {
                    print("Restore failed: \(error.localizedDescription)")
                    self?.errorMessage = "Restore failed. Please try again."
                    completion(false)
                } else if let customerInfo = customerInfo {
                    self?.hasActiveSubscription = customerInfo.entitlements.all["full_access"]?.isActive ?? false
                    completion(self?.hasActiveSubscription ?? false)
                } else {
                    completion(false)
                }
            }
        }
    }
    
    
    
    // MARK: - PurchasesDelegate
    func purchases(_ purchases: Purchases, receivedUpdated customerInfo: CustomerInfo) {
        DispatchQueue.main.async {
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
                if let error = error {
                    print("Failed to log out from RevenueCat: \(error.localizedDescription)")
                    self?.errorMessage = "Failed to log out. Please try again."
                    self?.isLoading = false
                } else {
                    // Delete the userID from the Keychain
                    KeychainHelper.delete(forKey: "appleUserID")
                    
                    // Reset authentication state
                    self?.isSignedIn = false
                    self?.hasActiveSubscription = false
                    self?.isLoading = false
                    
                    // Optionally, clear other user data if needed
                }
            }
        }
    }
}
