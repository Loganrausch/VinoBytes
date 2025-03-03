//
//  AppDelegate.swift
//  VinoBytes
//
//  Created by Logan Rausch on 2/27/25.
//

import UIKit

class AppDelegate: NSObject, UIApplicationDelegate {
    // Called when registration with APNs succeeds.
    func application(_ application: UIApplication, didRegisterForRemoteNotificationsWithDeviceToken deviceToken: Data) {
        let tokenString = deviceToken.map { String(format: "%02.2hhx", $0) }.joined()
        print("APNs Device Token: \(tokenString)")
        
        // Forward the token to your server (via ContentfulManager).
        ContentfulManager.shared.registerDeviceToken(tokenString)
    }
    
    // Called if registration fails.
    func application(_ application: UIApplication, didFailToRegisterForRemoteNotificationsWithError error: Error) {
        print("Failed to register for push notifications: \(error.localizedDescription)")
    }
}
