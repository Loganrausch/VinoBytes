//
//  UserProfileViewModel.swift
//  VinoBytes
//
//  Created by Logan Rausch on 2/23/25.
//

import SwiftUI
import CoreData

class UserProfileViewModel: ObservableObject {
    @Published var firstName: String = ""
    
    /// Loads the user's first name from Core Data.
    func loadUserProfile(context: NSManagedObjectContext) {
        let request: NSFetchRequest<UserProfile> = UserProfile.fetchRequest()
        do {
            if let profile = try context.fetch(request).first {
                // Update immediately without dispatching
                self.firstName = profile.firstName ?? ""
            }
        } catch {
            print("Error loading user profile: \(error)")
        }
    }
    
    /// Saves the provided first name to Core Data.
    func saveUserProfile(firstName: String, context: NSManagedObjectContext) {
        let request: NSFetchRequest<UserProfile> = UserProfile.fetchRequest()
        do {
            let profiles = try context.fetch(request)
            let profile: UserProfile
            if let existingProfile = profiles.first {
                profile = existingProfile
            } else {
                profile = UserProfile(context: context)
            }
            profile.firstName = firstName
            try context.save()
            DispatchQueue.main.async {
                self.firstName = firstName
            }
        } catch {
            print("Error saving user profile: \(error)")
        }
    }
}
