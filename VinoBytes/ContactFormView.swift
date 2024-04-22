//
//  ContactFormView.swift
//  VinoDecks
//
//  Created by Logan Rausch on 3/21/24.
//

import Foundation
import SwiftUI
import MessageUI

struct ContactFormView: View {
    @State private var name: String = ""
    @State private var message: String = ""
    @State private var isShowingMailCompose = false
    @State private var mailResult: Result<MFMailComposeResult, Error>? = nil
    @State private var showAlert = false
    @State private var showValidationError = false

    var body: some View {
        Form {
            Section(header: Text("Your Information")) {
                TextField("Name", text: $name)
            }

            Section(header: Text("Feedback")) {
                TextEditor(text: $message)
            }

            Button("Send Feedback") {
                if name.isEmpty || message.isEmpty {
                    showValidationError = true
                } else if MFMailComposeViewController.canSendMail() {
                    isShowingMailCompose = true
                } else {
                    showAlert = true
                }
            }
            .sheet(isPresented: $isShowingMailCompose) {
                MailComposeView(isShowing: $isShowingMailCompose, result: $mailResult) { mailCompose in
                    mailCompose.setSubject("Feedback from \(name)")
                    mailCompose.setToRecipients(["your_email@example.com"]) // Replace with your email address
                    let body = "Name: \(name)\nMessage: \(message)"
                    mailCompose.setMessageBody(body, isHTML: false)
                }
            }
            .alert(isPresented: $showValidationError) {
                Alert(title: Text("Validation Error"),
                      message: Text("Please fill in all required fields."),
                      dismissButton: .default(Text("OK")))
            }
        }
        .navigationTitle("Contact Us")
        .alert(isPresented: $showAlert) {
            Alert(
                title: Text("Mail Not Available"),
                message: Text("Your device is not configured to send mail. Please set up a mail account in order to send feedback."),
                dismissButton: .default(Text("OK"))
            )
        }
    }
}



struct MailComposeView: UIViewControllerRepresentable {
    @Environment(\.presentationMode) var presentationMode
    @Binding var isShowing: Bool
    @Binding var result: Result<MFMailComposeResult, Error>?
    var configure: (MFMailComposeViewController) -> Void

    func makeUIViewController(context: Context) -> MFMailComposeViewController {
        let viewController = MFMailComposeViewController()
        viewController.mailComposeDelegate = context.coordinator
        configure(viewController)
        return viewController
    }

    func updateUIViewController(_ uiViewController: MFMailComposeViewController, context: Context) {}

    func makeCoordinator() -> Coordinator {
        Coordinator(self)
    }

    class Coordinator: NSObject, MFMailComposeViewControllerDelegate {
        var parent: MailComposeView

        init(_ parent: MailComposeView) {
            self.parent = parent
        }

        func mailComposeController(_ controller: MFMailComposeViewController, didFinishWith result: MFMailComposeResult, error: Error?) {
            parent.result = error != nil ? .failure(error!) : .success(result)
            parent.isShowing = false
            parent.presentationMode.wrappedValue.dismiss()
        }
    }
}

