//
//  AccountView.swift
//  VinoDecks
//
//  Created by Logan Rausch on 3/3/24.
//

import Foundation
import SwiftUI
import StoreKit
import CoreData
import CloudKit

enum ActiveAlert: Identifiable {
    case resetWines, resetConversations, resetFlashcardSessions, iCloudEnabled, iCloudDisabled

    var id: Int {
        hashValue
    }
}

struct AccountView: View {
    @State private var showingShareSheet = false
    @State private var showingFeedbackSheet = false
    @State private var activeAlert: ActiveAlert?
    @State private var errorMessage: String?
    @State private var showingSuccessToast = false  // State for showing the toast message
    @State private var showingFlashcardSessionsResetToast = false
    @State private var showingConversationResetToast = false
    @State private var showingMyWinesResetToast = false
    @State private var isICloudAvailable: Bool = false
    @State private var isCheckingICloud: Bool = false  // For loading indicator
    @State private var showRateAlert = false
    
    @Environment(\.managedObjectContext) private var viewContext  // Core Data context
    @ObservedObject var refreshNotifier: RefreshNotifier  // Add this line
    @EnvironmentObject var openAIManager: OpenAIManager  // Access from environment
    @EnvironmentObject var authViewModel: AuthViewModel  // Access AuthViewModel
    @Environment(\.openURL) var openURL

    
    var appVersion: String {
            // Fetching the app version and build number from the Info.plist
            if let version = Bundle.main.infoDictionary?["CFBundleShortVersionString"] as? String,
               let build = Bundle.main.infoDictionary?["CFBundleVersion"] as? String {
                return "Version \(version) (\(build))"
            }
            return "Version not available"
        }
    
    // Specify your iCloud container identifier here
        let iCloudContainerIdentifier = "iCloud.com.vinobytes.VinoBytes1" // Replace with your actual container ID
    
    var body: some View {
        VStack {
            
            Form {
                Section(header: Text("General")
                    .font(.headline)
                    .foregroundColor(.black)
                
                ) {
                    
                    Button("Feedback") {
                        showingFeedbackSheet = true
                    }
                    .sheet(isPresented: $showingFeedbackSheet) {
                        ContactFormView()
                            .environment(\.colorScheme, .light)
                    }
                   
                    
                    Button("Invite Friends") {
                        showingShareSheet.toggle()
                    }
                    .sheet(isPresented: $showingShareSheet) {
                        ShareSheet(activityItems: ["Check out this awesome wine app: VinoBytes! You can download it here: https://apps.apple.com/us/app/vinobytes/id6736579105"])
                            .environment(\.colorScheme, .light)

                    }
                    
                    Button("Rate VinoBytes") {
                                          showRateAlert = true
                                      }
                                      .alert(isPresented: $showRateAlert) {
                                          Alert(
                                              title: Text("Enjoying VinoBytes?"),
                                              message: Text("Please take a moment to rate us on the App Store."),
                                              primaryButton: .default(Text("Rate Now")) {
                                                  openAppStoreForRating()
                                              },
                                              secondaryButton: .cancel()
                                          )
                                      }
                                  }
                                  .accentColor(Color.black)
                                  .environment(\.colorScheme, .light)
                
                Section(header: Text("Reset Progress")
                    .font(.headline)
                    .foregroundColor(.black)
                
                ) {
                    
                    Button("Delete My Wines") {
                        activeAlert = .resetWines
                        viewContext.refreshAllObjects()
                    }
                    
                    Button("Delete Flashcard Sessions") {
                        activeAlert = .resetFlashcardSessions
                    }
                    
                    
                    Button("Delete Vino Chat Conversation History") {
                        activeAlert = .resetConversations
                    }
                }
                .accentColor(Color.black) // Applying custom accent color locally to these buttons
                
                
                Section(header: Text("Legal")
                    .font(.headline)
                    .foregroundColor(.black)
                ) {
                    Button(action: {
                        if let url = URL(string: "https://vinobytes.com/privacy-policy") {
                            openURL(url)
                        }
                    }) {
                        Text("Privacy Policy")
                    }
                    
                    Button(action: {
                        if let url = URL(string: "https://vinobytes.com/terms-and-conditions") {
                            openURL(url)
                        }
                    }) {
                        Text("Terms and Conditions")
                    }
                }
                .accentColor(Color.black) // Applying custom accent color locally to these buttons
                
                // New Account Section
                    Section(header: Text("Account")
                    .font(.headline)
                    .foregroundColor(.black)) {
                        
                        
                        Button(action: {
                            handleICloudSyncInfo(showAlert: true)  // User-initiated check
                        }) {
                            HStack {
                                Text("iCloud Sync")
                                Spacer()
                                if isCheckingICloud {
                                    ProgressView()
                                } else if isICloudAvailable {
                                    Image(systemName: "checkmark.circle")
                                        .foregroundColor(.green)
                                } else {
                                    Image(systemName: "xmark.circle")
                                        .foregroundColor(.red)
                                }
                            }
                            .accentColor(Color.black) // Applying custom accent color locally to these buttons
                        }
                }
            }
            
            .padding(.top, 15)
            .navigationBarTitle("Account Settings", displayMode: .inline)
            
           
            
       
            // App version at the bottom
                       Text(appVersion)
                           .font(.footnote)
                           .foregroundColor(.gray)
                           .padding(.bottom, 5) // Padding for space at the bottom
            
            VStack{  Text("support@vinobytes.com")
                    .font(.footnote)
                    .foregroundColor(.gray)
                    .padding(.bottom, 12) // Padding for space at the bottom
                
            }
            
            .accentColor(Color.gray) // Applying custom accent color locally to these buttons
            
        }
        .background(Color(.systemGroupedBackground).edgesIgnoringSafeArea(.all))
        .toast(message: "All wines successfully deleted!", isShowing: $showingMyWinesResetToast)
        .toast(message: "Conversation history deleted successfully!", isShowing: $showingConversationResetToast)
        .toast(message: "Flashcard session history deleted successfully!", isShowing: $showingFlashcardSessionsResetToast)
        .onAppear {
            handleICloudSyncInfo(showAlert: false)  // Automatic check without alert
            }
        
        
        .alert(item: $activeAlert) { alertType in
            switch alertType {
            case .resetWines:
                return Alert(
                    title: Text("Confirm Delete"),
                    message: Text("Are you sure you want to delete all your wines from your device and iCloud? This action cannot be undone."),
                    primaryButton: .destructive(Text("Delete")) {
                        resetMyWines()
                    },
                    secondaryButton: .cancel()
                )
                
            case .resetConversations:
                    return Alert(
                            title: Text("Confirm Delete"),
                            message: Text("Are you sure you want to delete all your conversation history from your device and iCloud? This action cannot be undone."),
                            primaryButton: .destructive(Text("Delete")) {
                                    resetConversationHistory()
                                },
                                secondaryButton: .cancel()
                            )
                
            case .resetFlashcardSessions:
                    return Alert(
                        title: Text("Confirm Delete"),
                        message: Text("Are you sure you want to delete all your flashcard sessions from your device and iCloud? This action cannot be undone."),
                        primaryButton: .destructive(Text("Delete")) {
                            resetFlashcardSessions()
                        },
                        secondaryButton: .cancel()
                    )
                
            case .iCloudEnabled:
                            return Alert(
                                title: Text("iCloud Synced"),
                                message: Text("Your data has been successfully synchronized with iCloud."),
                                dismissButton: .default(Text("OK"))
                            )
            case .iCloudDisabled:
                            return Alert(
                                title: Text("iCloud Disabled"),
                                message: Text("Please enable iCloud in your device settings to use this feature."),
                                primaryButton: .default(Text("Settings"), action: {
                                    openSettings()
                                }),
                                secondaryButton: .cancel()
                            )
           
            }
        }
    }
    
    
    
    private func openAppStoreForRating() {
        let appID = "6736579105"
        if let url = URL(string: "itms-apps://itunes.apple.com/us/app/vinobytes/id\(appID)?action=write-review"),
           UIApplication.shared.canOpenURL(url) {
            openURL(url)
        } else {
            // Fallback to the web version if the App Store can't be opened
            if let webURL = URL(string: "https://apps.apple.com/us/app/vinobytes/id\(appID)?action=write-review") {
                openURL(webURL)
            }
        }
    }


        
    
    private func handleICloudSyncInfo(showAlert: Bool) {
        isCheckingICloud = true  // Show loading indicator
        let container = CKContainer(identifier: iCloudContainerIdentifier)
        container.accountStatus { status, error in
            DispatchQueue.main.async {
                self.isCheckingICloud = false
                if let error = error {
                    self.errorMessage = "Error checking iCloud status: \(error.localizedDescription)"
                    self.isICloudAvailable = false
                    return
                }
                
                switch status {
                case .available:
                    self.isICloudAvailable = true
                    if showAlert {
                        self.activeAlert = .iCloudEnabled
                    }
                case .noAccount:
                    self.isICloudAvailable = false
                    if showAlert {
                        self.activeAlert = .iCloudDisabled
                    }
                    self.errorMessage = "No iCloud account is signed in."
                case .restricted:
                    self.isICloudAvailable = false
                    self.errorMessage = "iCloud access is restricted."
                case .couldNotDetermine:
                    self.isICloudAvailable = false
                    self.errorMessage = "Could not determine iCloud status."
                case .temporarilyUnavailable:
                    self.isICloudAvailable = false
                    self.errorMessage = "iCloud is temporarily unavailable."
                @unknown default:
                    self.isICloudAvailable = false
                    self.errorMessage = "Unknown iCloud status."
                }
            }
        }
    }
        
        // Opens the device settings
        private func openSettings() {
            guard let settingsURL = URL(string: UIApplication.openSettingsURLString) else {
                return
            }
            if UIApplication.shared.canOpenURL(settingsURL) {
                UIApplication.shared.open(settingsURL, options: [:], completionHandler: nil)
            }
        }
    
    
    // Update resetMyWines function
    private func resetMyWines() {
        let fetchRequest: NSFetchRequest<WineEntity> = WineEntity.fetchRequest()
        do {
            let wines = try viewContext.fetch(fetchRequest)
            for wine in wines {
                viewContext.delete(wine)
            }
            try viewContext.save()
            print("Deleted \(wines.count) wines.")
            showingMyWinesResetToast = true
            refreshNotifier.needsRefresh = true  // Notify that data needs to be refreshed
        } catch {
            self.errorMessage = "Failed to reset wines: \(error.localizedDescription)"
            print("Failed to reset wines: \(error)")
        }
    }
    
    // New function to reset conversation history
        private func resetConversationHistory() {
            openAIManager.resetConversationHistory()
            showingConversationResetToast = true  // Show toast message
        }
    
    private func resetFlashcardSessions() {
        let fetchRequest: NSFetchRequest<StudySession> = StudySession.fetchRequest()
        do {
            let sessions = try viewContext.fetch(fetchRequest)
            for session in sessions {
                viewContext.delete(session)
            }
            try viewContext.save()
            print("Deleted \(sessions.count) flashcard sessions.")
            showingFlashcardSessionsResetToast = true
        } catch {
            self.errorMessage = "Failed to reset flashcard sessions: \(error.localizedDescription)"
            print("Failed to reset flashcard sessions: \(error)")
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

