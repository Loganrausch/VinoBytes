//
//  AccountView.swift
//  VinoDecks
//
//  Created by Logan Rausch on 3/3/24.
//

import Foundation

import SwiftUI

struct AccountView: View {
    @State private var showingShareSheet = false
    @State private var showingFeedbackSheet = false

    var body: some View {
        NavigationView {
            List {
                Section(header: Text("Actions")) {
                    Button(action: {
                        // Rate your app logic
                    }) {
                        Text("Rate App")
                    }
                    Button(action: {
                        // Invite friends logic
                        showingShareSheet.toggle()
                    }) {
                        Text("Invite Friends")
                    }
                    .sheet(isPresented: $showingShareSheet) {
                        ShareSheet(activityItems: ["Check out this cool wine app!"])
                    }
                    Button(action: {
                        showingFeedbackSheet = true
                    }) {
                        Text("Feedback")
                    }
                    .sheet(isPresented: $showingFeedbackSheet) {
                        ContactFormView()
                    }

                    Button(action: {
                        // Reset progress logic
                    }) {
                        Text("Reset Progress")
                    }

                    Button(action: {
                        // Log out logic
                    }) {
                        Text("Log Out")
                    }
                }
                Section(header: Text("Legal")) {
                    NavigationLink(destination: LegalDocumentView(documentTitle: "Terms and Conditions", documentText: termsAndConditionsText)) {
                        Text("Terms and Conditions")
                    }
                    NavigationLink(destination: LegalDocumentView(documentTitle: "Privacy Policy", documentText: privacyPolicyText)) {
                        Text("Privacy Policy")
                    }
                }
            }
            .listStyle(GroupedListStyle())
            .navigationBarTitle("Account")
        }
    }
}

struct ShareSheet: UIViewControllerRepresentable {
    let activityItems: [Any]

    func makeUIViewController(context: Context) -> UIActivityViewController {
        return UIActivityViewController(activityItems: activityItems, applicationActivities: nil)
    }

    func updateUIViewController(_ uiViewController: UIActivityViewController, context: Context) {}
}

struct AccountView_Previews: PreviewProvider {
    static var previews: some View {
        AccountView()
    }
}
