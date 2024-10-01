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
    @FocusState private var isMessageFocused: Bool

    var body: some View {
        Form {
            Section(header: Text("Your Name")) {
                TextField("Name", text: $name)
                                    .autocapitalization(.words)
                            }

            Section(header: Text("Your Feedback")) {
                TextEditor(text: $message)
                    .frame(minHeight: 150)
                    .focused($isMessageFocused) // Link with focus state
                    .onChange(of: message) { _, newValue in
                        print("Message updated to: \(newValue)")  // Debugging
                    }
            }
                        


            Button("Send Feedback") {
                if name.isEmpty || message.isEmpty {
                    showValidationError = true
                } else {
                    // Resign the keyboard to force message update
                    isMessageFocused = false
                    
                    DispatchQueue.main.asyncAfter(deadline: .now() + 0.2) {  // Add a slight delay for state update
                        if MFMailComposeViewController.canSendMail() {
                            isShowingMailCompose = true
                        } else {
                            showAlert = true
                        }
                    }
                }
            }
            .sheet(isPresented: $isShowingMailCompose) {
                MailComposeView(isShowing: $isShowingMailCompose, result: $mailResult) { mailCompose in
                    let body = (message)
                    print("Preparing email with body: \(body)")  // Debug statement
                    mailCompose.setSubject("Feedback from \(name)")
                    mailCompose.setToRecipients(["support@vinobytes.com"])
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
    @Environment(\.dismiss) var dismiss // Use .dismiss for newer SwiftUI versions
    @Binding var isShowing: Bool
    @Binding var result: Result<MFMailComposeResult, Error>?
    var configure: (MFMailComposeViewController) -> Void

    func makeUIViewController(context: Context) -> MFMailComposeViewController {
        let vc = MFMailComposeViewController()
        vc.mailComposeDelegate = context.coordinator
        configure(vc)
        return vc
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
            if let error = error {
                parent.result = .failure(error)
                print("Mail Composer Error: \(error.localizedDescription)") // Debugging
            } else {
                parent.result = .success(result)
                print("Mail Composer Result: \(result)") // Debugging
            }
            parent.isShowing = false
            parent.dismiss()
        }
    }
}

