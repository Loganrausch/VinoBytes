//
//  ContactFormViewModel.swift
//  VinoBytes
//
//  Created by Logan Rausch on 5/6/25.
//

import Foundation
import MessageUI
import SwiftUI

class ContactFormViewModel: ObservableObject {
    // Input fields
    @Published var name: String = ""
    @Published var message: String = ""
    
    // Output & control
    @Published var isShowingMailCompose: Bool = false
    @Published var mailResult: Result<MFMailComposeResult, Error>? = nil
    @Published var showValidationError: Bool = false
    @Published var showMailUnavailableAlert: Bool = false

    // Validation logic
    var isFormValid: Bool {
        !name.trimmingCharacters(in: .whitespaces).isEmpty &&
        !message.trimmingCharacters(in: .whitespaces).isEmpty
    }

    func sendFeedback() {
        // Validate
        guard isFormValid else {
            showValidationError = true
            return
        }
        // Attempt to show mail compose
        if MFMailComposeViewController.canSendMail() {
            // Dismiss keyboard might happen in the view
            DispatchQueue.main.asyncAfter(deadline: .now() + 0.1) {
                self.isShowingMailCompose = true
            }
        } else {
            showMailUnavailableAlert = true
        }
    }

    func configureMail(_ vc: MFMailComposeViewController) {
        vc.setSubject("Feedback from \(name)")
        vc.setToRecipients(["support@vinobytes.com"])
        vc.setMessageBody(message, isHTML: false)
    }
}
