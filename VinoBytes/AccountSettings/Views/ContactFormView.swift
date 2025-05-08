//
//  ContactFormView.swift
//  VinoDecks
//
//  Created by Logan Rausch on 3/21/24.
//

import SwiftUI
import MessageUI

struct ContactFormView: View {
    @StateObject private var viewModel = ContactFormViewModel()
    @FocusState private var isMessageFocused: Bool

    var body: some View {
        Form {
            Section(header: Text("Your Name")) {
                TextField("Name", text: $viewModel.name)
                    .autocapitalization(.words)
            }
            Section(header: Text("Your Feedback")) {
                TextEditor(text: $viewModel.message)
                    .frame(minHeight: 150)
                    .focused($isMessageFocused)
            }
            Button("Send Feedback") {
                // Dismiss keyboard
                isMessageFocused = false
                viewModel.sendFeedback()
            }
            .alert(isPresented: $viewModel.showValidationError) {
                Alert(title: Text("Validation Error"),
                      message: Text("Please fill in all required fields."),
                      dismissButton: .default(Text("OK")))
            }
            .alert(isPresented: $viewModel.showMailUnavailableAlert) {
                Alert(title: Text("Mail Not Available"),
                      message: Text("Your device is not configured to send mail."),
                      dismissButton: .default(Text("OK")))
            }
        }
        .navigationTitle("Contact Us")
        .sheet(isPresented: $viewModel.isShowingMailCompose) {
            MailComposeView(isShowing: $viewModel.isShowingMailCompose,
                            result: $viewModel.mailResult) { mailCompose in
                viewModel.configureMail(mailCompose)
            }
        }
    }
}
