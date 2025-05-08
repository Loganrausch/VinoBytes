//
//  ChangeNameViewModel.swift
//  VinoBytes
//
//  Created by Logan Rausch on 5/6/25.
//

import Foundation
import CoreData

class ChangeNameViewModel: ObservableObject {
    @Published var firstName: String = ""
    private let context: NSManagedObjectContext
    private let userProfile: UserProfileViewModel

    init(userProfile: UserProfileViewModel, context: NSManagedObjectContext) {
        self.userProfile = userProfile
        self.context = context
        self.firstName = userProfile.firstName
    }

    func save() {
        let trimmed = firstName.trimmingCharacters(in: .whitespaces)
        guard !trimmed.isEmpty else { return }
        userProfile.saveUserProfile(firstName: trimmed, context: context)
    }
}
