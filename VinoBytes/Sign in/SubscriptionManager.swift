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
    @Published var shouldNavigateToRoot = false  // Add this property to notify UI of navigation
    
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
    
    func restorePurchases(completion: @escaping (Bool, String) -> Void) {
           Purchases.shared.restorePurchases { [weak self] customerInfo, error in
               if let error = error {
                   print("Restore purchases failed: \(error.localizedDescription)")
                   completion(false, "Restore failed. Please try again.")
               } else if let customerInfo = customerInfo {
                   DispatchQueue.main.async {
                       self?.hasActiveSubscription = customerInfo.entitlements.all["full_access"]?.isActive ?? false
                       print("Purchases restored. Subscription active: \(self?.hasActiveSubscription ?? false)")

                       // Trigger UI navigation if subscription is active
                       if self?.hasActiveSubscription == true {
                           self?.shouldNavigateToRoot = true
                       }
                       completion(true, "Purchases restored successfully.")
                   }
               }
           }
       }

       // Delegate method for RevenueCat subscription updates
       func purchases(_ purchases: Purchases, receivedUpdated customerInfo: CustomerInfo) {
           DispatchQueue.main.async {
               self.hasActiveSubscription = customerInfo.entitlements.all["full_access"]?.isActive ?? false
               print("Subscription updated: \(self.hasActiveSubscription)")

               if self.hasActiveSubscription {
                   self.shouldNavigateToRoot = true
               }
           }
       }
   }
