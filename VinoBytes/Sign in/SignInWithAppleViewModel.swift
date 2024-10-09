//
//  SignInWithAppleViewModel.swift
//  VinoBytes
//
//  Created by Logan Rausch on 10/6/24.
//
import AuthenticationServices
import RevenueCat
import SwiftUI

class SignInWithAppleViewModel: ObservableObject {
    
    @Published var isSignedIn: Bool = false
    @Published var userID: String? = nil
    @Published var errorMessage: String? = nil
    
    func handleSignIn(authorization: ASAuthorization) {
        if let appleIDCredential = authorization.credential as? ASAuthorizationAppleIDCredential {
            // Assign the userID directly to the published property
            self.userID = appleIDCredential.user
            
            // Safely unwrap userID before proceeding
            guard let userID = self.userID else {
                self.errorMessage = "Failed to retrieve user information."
                return
            }
            
            do {
                // Securely store the userID
                try KeychainHelper.save(userID, forKey: "appleUserID")
            } catch {
                print("Keychain save error: \(error.localizedDescription)")
                self.errorMessage = "Failed to save user information securely."
                return
            }
            
            // Optionally retrieve user information
            // Uncomment the following lines if you plan to use email and fullName
        
            let email = appleIDCredential.email
            let fullName = appleIDCredential.fullName
            
            
            // Log in the user with RevenueCat
            Purchases.shared.logIn(userID) { [weak self] customerInfo, created, error in
                DispatchQueue.main.async {
                    if let error = error {
                        print("RevenueCat logIn error: \(error.localizedDescription)")
                        self?.errorMessage = "Failed to sign in. Please try again."
                    } else {
                        print("User logged in with RevenueCat ID: \(userID), created: \(created)")
                        self?.isSignedIn = true
                    }
                }
            }
        }
    }
    
    func handleError(_ error: Error) {
        print("Sign in with Apple failed: \(error.localizedDescription)")
        DispatchQueue.main.async {
            self.errorMessage = "Sign in with Apple failed. Please try again."
        }
    }
}
