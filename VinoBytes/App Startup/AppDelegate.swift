//
//  AppDelegate.swift
//  VinoBytes
//
//  Created by Logan Rausch on 2/27/25.
//

import UIKit
import UserNotifications

class AppDelegate: NSObject, UIApplicationDelegate, UNUserNotificationCenterDelegate {
    // Called when registration with APNs succeeds.
    func application(_ application: UIApplication, didRegisterForRemoteNotificationsWithDeviceToken deviceToken: Data) {
        let tokenString = deviceToken.map { String(format: "%02.2hhx", $0) }.joined()
        print("APNs Device Token: \(tokenString)")
        ContentfulManager.shared.registerDeviceToken(tokenString)
    }
    
    // Called if registration fails.
    func application(_ application: UIApplication, didFailToRegisterForRemoteNotificationsWithError error: Error) {
        print("Failed to register for push notifications: \(error.localizedDescription)")
    }
    
    // Set self as delegate for UNUserNotificationCenter.
    func application(_ application: UIApplication, didFinishLaunchingWithOptions launchOptions: [UIApplication.LaunchOptionsKey : Any]? = nil) -> Bool {
        print("didFinishLaunchingWithOptions called")  // <--- Print to confirm it's called
        UNUserNotificationCenter.current().delegate = self
        
        // If launched from a push notification, check for deep link info.
                if let remoteNotification = launchOptions?[.remoteNotification] as? [AnyHashable: Any] {
                    print("Remote notification at launch: \(remoteNotification)")  // <--- Print the dictionary

                    if let destination = remoteNotification["destination"] as? String, destination == "wineFact" {
                        // Post a notification so SwiftUI can react.
                        NotificationCenter.default.post(name: .deepLink, object: nil, userInfo: ["destination": "wineFact"])
                    }
                }
                
                return true
            }
    
    // Handle notification taps when the app is in the foreground or background.
    func userNotificationCenter(_ center: UNUserNotificationCenter,
                                didReceive response: UNNotificationResponse,
                                withCompletionHandler completionHandler: @escaping () -> Void) {
        let userInfo = response.notification.request.content.userInfo
        
        if let destination = userInfo["destination"] as? String,
                  destination == "wineFact"
               {
                   // 1) Set a flag in UserDefaults so we know there's a new Wine Fact
                   UserDefaults.standard.set(true, forKey: "NewWineFactAvailable")
                   
                   // 2) Still trigger the immediate deep link if the system calls us
                   NotificationCenter.default.post(name: .deepLink,
                                                   object: nil,
                                                   userInfo: ["destination": "wineFact"])
               }
               
               completionHandler()
           }
       }

extension Notification.Name {
    static let deepLink = Notification.Name("deepLink")
}
