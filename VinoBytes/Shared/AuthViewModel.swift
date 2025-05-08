//
//  AuthViewModel.swift
//  VinoBytes
//
//  Created by Logan Rausch on 10/9/24.
//

// AuthViewModel.swift



import Foundation
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
                self.logger.error("Error fetching customer info: \(error.localizedDescription)")
                self.errorMessage = "Unable to fetch subscription status."
            } else if let customerInfo = customerInfo {
                self.hasActiveSubscription = customerInfo.entitlements["full_access"]?.isActive ?? false
            }
            self.isLoading = false
        }
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
            }
            self.isLoading = false
        }
    }
    
    // MARK: - PurchasesDelegate
    nonisolated func purchases(_ purchases: Purchases, receivedUpdated customerInfo: CustomerInfo) {
        // Since this method is nonisolated, we need to dispatch updates to the main actor
        Task { @MainActor in
            self.hasActiveSubscription = customerInfo.entitlements["full_access"]?.isActive ?? false
        }
    }
}
