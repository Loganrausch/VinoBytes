//
//  AccountView.swift
//  VinoDecks
//
//  Created by Logan Rausch on 3/3/24.
//

import Foundation

import SwiftUI

struct AccountView: View {
    @AppStorage("isDarkMode") private var isDarkMode: Bool = UITraitCollection.current.userInterfaceStyle == .dark

    @State private var showingShareSheet = false
    @State private var showingFeedbackSheet = false




    var body: some View {
        NavigationView {
            List {
                Section(header: Text("Appearance")) {
                    Toggle("Dark Mode", isOn: $isDarkMode)
                        .onChange(of: isDarkMode) {
                            if let windowScene = UIApplication.shared.connectedScenes.first as? UIWindowScene {
                                if let window = windowScene.windows.first(where: { $0.isKeyWindow }) {
                                    window.overrideUserInterfaceStyle = isDarkMode ? .dark : .light
                                }
                            }
                        }
                }

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
                    NavigationLink(destination: Text("Terms of Service")) {
                        Text("Terms of Service")
                    }
                    NavigationLink(destination: Text("Privacy Policy")) {
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
