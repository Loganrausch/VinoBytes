//
//  AccountView.swift
//  VinoDecks
//
//  Created by Logan Rausch on 3/3/24.
//

import SwiftUI
import CoreData

struct AccountView: View {
    // MARK: – Dependencies injected from parent / environment
    @Environment(\.managedObjectContext) private var context
    @Environment(\.openURL) private var openURL
    @EnvironmentObject private var openAI: OpenAIManager
    @EnvironmentObject private var userProfile: UserProfileViewModel
    @ObservedObject var refreshNotifier: RefreshNotifier

    @StateObject private var viewModel: AccountViewModel

    // MARK: – Init
    init(refreshNotifier: RefreshNotifier,
         context: NSManagedObjectContext,
         openAI: OpenAIManager) {
        self.refreshNotifier = refreshNotifier
        _viewModel = StateObject(wrappedValue: AccountViewModel(
            context: context,
            openAI: openAI,
            refreshNotifier: refreshNotifier
        ))
    }

    // MARK: – Computed
    private var appVersion: String {
        if let v = Bundle.main.infoDictionary?["CFBundleShortVersionString"] as? String,
           let b = Bundle.main.infoDictionary?["CFBundleVersion"] as? String {
            return "Version \(v) (\(b))"
        }
        return "Version n/a"
    }

    // MARK: – Body
    var body: some View {
        VStack {
            formSection
            footer
        }
        .background(Color(.systemGroupedBackground).ignoresSafeArea())
        .navigationTitle("Account Settings")
        .onAppear { viewModel.onAppear() }
        // Toasts
        .toast(message: "All wines successfully deleted!",       isShowing: $viewModel.showingMyWinesResetToast)
        .toast(message: "Conversation history deleted successfully!", isShowing: $viewModel.showingConversationResetToast)
        .toast(message: "Flashcard session history deleted successfully!", isShowing: $viewModel.showingFlashcardResetToast)
        .toast(message: "Name Change Successful!",                isShowing: $viewModel.showingNameChangeSuccessToast)
        // Sheets & Alerts
        .sheet(isPresented: $viewModel.showingChangeNameSheet, onDismiss: {
            viewModel.endNameChange(newName: userProfile.firstName)
        }) {
            ChangeNameSheetView(
                viewModel: ChangeNameViewModel(
                    userProfile: userProfile,
                    context: context)
            )
            .presentationDetents([.fraction(0.4)])
            .presentationDragIndicator(.visible)
            .preferredColorScheme(.light)
        }
        .sheet(isPresented: $viewModel.showingFeedbackSheet) {
            ContactFormView().environment(\.colorScheme, .light)
        }
        .sheet(isPresented: $viewModel.showingShareSheet) {
            ShareSheet(activityItems:[
                "Check out this awesome wine app: VinoBytes! You can download it here: https://apps.apple.com/us/app/vinobytes/id6736579105"
            ])
            .environment(\.colorScheme, .light)
        }
        .alert(item: $viewModel.activeAlert) { alert in
            switch alert {
            case .resetWines:
                return resetAlert(title: "Delete My Wines", action: viewModel.resetMyWines)
            case .resetFlashcardSessions:
                return resetAlert(title: "Delete Flashcard Sessions", action: viewModel.resetFlashcardSessions)
            case .resetConversations:
                return resetAlert(title: "Delete Conversation History", action: viewModel.resetConversationHistory)
            case .iCloudEnabled:
                return Alert(title: Text("iCloud Synced"), message: Text("Your data is synchronized."), dismissButton: .default(Text("OK")))
            case .iCloudDisabled:
                return Alert(title: Text("iCloud Disabled"), message: Text("Enable iCloud in Settings."), primaryButton: .default(Text("Settings"), action: openSettings), secondaryButton: .cancel())
            }
        }
        .alert("Enjoying VinoBytes?", isPresented: $viewModel.showRateAlert) {
            Button("Rate Now", action: viewModel.openAppStoreForRating)
            Button("Cancel", role: .cancel) {}
        } message: {
            Text("Please take a moment to rate us on the App Store.")
        }
        .preferredColorScheme(.light)
    }

    // MARK: – Sub‑Views
    private var formSection: some View {
        Form {
            generalSection
            resetSection
            legalSection
            accountSection
        }
        .accentColor(.black)
    }

    private var generalSection: some View {
        Section(header: Text("General").font(.headline).foregroundColor(.black)) {
            Button("Feedback", action: viewModel.feedbackTapped)
            Button("Invite Friends", action: viewModel.inviteFriends)
            Button("Rate VinoBytes", action: viewModel.rateAppTapped)
        }
    }

    private var resetSection: some View {
        Section(header: Text("Reset Progress").font(.headline).foregroundColor(.black)) {
            Button("Delete My Wines") { viewModel.activeAlert = .resetWines }
            Button("Delete Flashcard Sessions") { viewModel.activeAlert = .resetFlashcardSessions }
            Button("Delete Vino Chat Conversation History") { viewModel.activeAlert = .resetConversations }
        }
    }

    private var legalSection: some View {
        Section(header: Text("Legal").font(.headline).foregroundColor(.black)) {
            Button("Privacy Policy") { openURL(URL(string: "https://vinobytes.my.canva.site/privacy-policy")!) }
            Button("Terms and Conditions") { openURL(URL(string: "https://vinobytes.my.canva.site/terms-and-conditions")!) }
        }
    }

    private var accountSection: some View {
        Section(header: Text("Account").font(.headline).foregroundColor(.black)) {
            Button {
                Task { await viewModel.checkICloud(showAlert: true) }
            } label: {
                HStack {
                    Text("iCloud Sync")
                    Spacer()
                    if viewModel.isCheckingICloud {
                        ProgressView()
                    } else if viewModel.isICloudAvailable {
                        Image(systemName: "checkmark.circle").foregroundColor(.green)
                    } else {
                        Image(systemName: "xmark.circle").foregroundColor(.red)
                    }
                }
            }
            Button("Change Name") {
                viewModel.beginNameChange(currentName: userProfile.firstName)
            }
        }
    }

    private var footer: some View {
        VStack(spacing: 4) {
            Text(appVersion).font(.footnote).foregroundColor(.gray)
            Text("support@vinobytes.com").font(.footnote).foregroundColor(.gray)
        }
        .padding(.bottom, 8)
    }

    // MARK: – Helpers
    private func resetAlert(title: String, action: @escaping () -> Void) -> Alert {
        Alert(title: Text("Confirm Delete"),
              message: Text("Are you sure you want to \(title.lowercased())? This action cannot be undone."),
              primaryButton: .destructive(Text("Delete"), action: action),
              secondaryButton: .cancel())
    }

    private func openSettings() {
        guard let url = URL(string: UIApplication.openSettingsURLString) else { return }
        UIApplication.shared.open(url)
    }
}
