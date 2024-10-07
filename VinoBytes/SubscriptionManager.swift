//
//  SubscriptionManager.swift
//  VinoBytes
//
//  Created by Logan Rausch on 10/6/24.
//

import Foundation
import RevenueCat

class SubscriptionManager: NSObject, ObservableObject, PurchasesDelegate {
    static let shared = SubscriptionManager()  // Singleton instance
    
    @Published var hasActiveSubscription = false
    
    override init() {
        super.init()
        configureRevenueCat()
        checkSubscriptionStatus()
    }
    
    private func configureRevenueCat() {
        Purchases.configure(withAPIKey: "appl_DRafRrwMiDiUXCqUuZzkUKJZiOR")
        Purchases.shared.delegate = self
    }
    
    private func checkSubscriptionStatus() {
        Task {
            do {
                let customerInfo = try await Purchases.shared.customerInfo()
                DispatchQueue.main.async {
                    self.hasActiveSubscription = customerInfo.entitlements.all["full_access"]?.isActive ?? false
                }
            } catch {
                print("Failed to fetch customer info: \(error)")
            }
        }
    }
    
    func purchases(_ purchases: Purchases, receivedUpdated customerInfo: CustomerInfo) {
        DispatchQueue.main.async {
            self.hasActiveSubscription = customerInfo.entitlements.all["full_access"]?.isActive ?? false
        }
    }
}
