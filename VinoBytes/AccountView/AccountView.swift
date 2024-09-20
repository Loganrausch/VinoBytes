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

enum ActiveAlert: Identifiable {
    case resetWines, resetFlashcards, iCloudSyncInfo

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
    @State private var showingFlashcardResetToast = false  // State for showing the toast message for flashcards
    @Environment(\.managedObjectContext) private var viewContext  // Core Data context
    @ObservedObject var refreshNotifier: RefreshNotifier  // Add this line
    
    var appVersion: String {
            // Fetching the app version and build number from the Info.plist
            if let version = Bundle.main.infoDictionary?["CFBundleShortVersionString"] as? String,
               let build = Bundle.main.infoDictionary?["CFBundleVersion"] as? String {
                return "Version \(version) (\(build))"
            }
            return "Version not available"
        }
    
    var body: some View {
        VStack {
            if let errorMessage = errorMessage {
                Text(errorMessage)
                    .foregroundColor(.red)
            }
            
            Form {
                Section(header: Text("General")) {
                    
                    Button("Feedback") {
                        showingFeedbackSheet = true
                    }
                    .sheet(isPresented: $showingFeedbackSheet) {
                        ContactFormView()
                    }
                    
                    Button("Invite Friends") {
                        showingShareSheet.toggle()
                    }
                    .sheet(isPresented: $showingShareSheet) {
                        ShareSheet(activityItems: ["Check out this cool wine app: VinoBytes! You can download it here: https://vinobytes.com"])
                    }
                    
                    Button("iCloud Sync Info") {
                        activeAlert = .iCloudSyncInfo
                    }
                    
                    Button("Rate VinoBytes App") {
                        if let windowScene = UIApplication.shared.windows.first?.windowScene {
                            SKStoreReviewController.requestReview(in: windowScene)
                        }
                    }
                    
                    
                    
                    
                    
                }
                .accentColor(Color.black) // Applying custom accent color locally to these buttons
                
                Section(header: Text("Reset Progress")) {
                    Button("Reset My Wines") {
                        activeAlert = .resetWines
                        viewContext.refreshAllObjects()
                    }
                    
                    
                    Button("Reset Flashcard Progress") {
                        activeAlert = .resetFlashcards
                    }
                }
                .accentColor(Color.black) // Applying custom accent color locally to these buttons
                
                
                Section(header: Text("Legal")) {
                    
                    NavigationLink(destination: LegalDocumentView(documentTitle: "Privacy Policy", documentText: privacyPolicyText)) {
                        Text("Privacy Policy")
                    }
                    NavigationLink(destination: LegalDocumentView(documentTitle: "Terms and Conditions", documentText: termsAndConditionsText)) {
                        Text("Terms and Conditions")
                    }
                    
                }
                
                .accentColor(Color.black) // Applying custom accent color locally to these buttons
            }
            
            .padding(.top, 20)
            .navigationBarTitle("Account Settings", displayMode: .inline)
            
            
            
            // Logo image at the bottom
                        Image("vinobytes_logo_final")
                            .resizable()
                            .scaledToFit()
                            .frame(height: 110)  // Adjust the size as needed
                            .padding(.bottom, 10)
            
            // App version at the bottom
                       Text(appVersion)
                           .font(.footnote)
                           .foregroundColor(.gray)
                           .padding(.bottom, 18) // Padding for space at the bottom
            
        }
        .background(Color(.systemGroupedBackground).edgesIgnoringSafeArea(.all))
        .toast(message: "All wines successfully deleted!", isShowing: $showingSuccessToast)
        .toast(message: "Flashcard progress reset successfully!", isShowing: $showingFlashcardResetToast)  // Add toast for flashcards
        .alert(item: $activeAlert) { alertType in
            switch alertType {
            case .resetWines:
                return Alert(
                    title: Text("Confirm Delete"),
                    message: Text("Are you sure you want to delete all your wines? This action cannot be undone."),
                    primaryButton: .destructive(Text("Delete")) {
                        resetMyWines()
                    },
                    secondaryButton: .cancel()
                )
            case .resetFlashcards:
                return Alert(
                    title: Text("Confirm Reset"),
                    message: Text("Are you sure you want to reset all your flashcard progress? This action cannot be undone."),
                    primaryButton: .destructive(Text("Reset")) {
                        resetFlashcardProgress()
                    },
                    secondaryButton: .cancel()
                )
                
            case .iCloudSyncInfo:
                            return Alert(
                                title: Text("iCloud Sync"),
                                message: Text("Your data is automatically backed up using iCloud. Ensure iCloud is enabled in your device settings to utilize this feature."),
                                dismissButton: .default(Text("OK"))
                            )
            }
        }
    }
    
    
    // Function to reset flashcard progress
    private func resetFlashcardProgress() {
        let fetchRequest: NSFetchRequest<StudyCard> = StudyCard.fetchRequest()
        do {
            let flashcards = try viewContext.fetch(fetchRequest)
            print("Resetting progress for \(flashcards.count) flashcards.")
            for flashcard in flashcards {
                print("Resetting flashcard with ID \(flashcard.id ?? "Unknown ID") from box \(flashcard.boxNumber) to box 1.")
                flashcard.boxNumber = 1
                flashcard.nextReviewDate = Date()
            }
            try viewContext.save()
            print("All flashcards have been reset.")
            showingFlashcardResetToast = true  // Trigger the toast
        } catch {
            print("Failed to reset flashcard progress: \(error.localizedDescription)")
            self.errorMessage = "Failed to reset flashcard progress: \(error.localizedDescription)"
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
            showingSuccessToast = true
            refreshNotifier.needsRefresh = true  // Notify that data needs to be refreshed
        } catch {
            self.errorMessage = "Failed to reset wines: \(error.localizedDescription)"
            print("Failed to reset wines: \(error)")
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
        let refreshNotifier = RefreshNotifier()
        
        NavigationView {
            AccountView(refreshNotifier: refreshNotifier)
        }
    }
}
