//
//  AccountViewModel.swift
//  VinoBytes
//
//  Created by Logan Rausch on 5/6/25.
//

import SwiftUI
import CoreData
import CloudKit
import StoreKit
import MessageUI

@MainActor
final class AccountViewModel: ObservableObject {
    // MARK: – Published UI State
    @Published var showingShareSheet               = false
    @Published var showingFeedbackSheet            = false
    @Published var activeAlert: ActiveAlert?       = nil
    @Published var errorMessage: String?           = nil

    @Published var showingFlashcardResetToast      = false
    @Published var showingConversationResetToast   = false
    @Published var showingMyWinesResetToast        = false
    @Published var showingNameChangeSuccessToast   = false

    @Published var isICloudAvailable: Bool         = false
    @Published var isCheckingICloud: Bool          = false
    @Published var showRateAlert: Bool             = false
    @Published var showingChangeNameSheet: Bool    = false

    // MARK: – Dependencies
    private let context: NSManagedObjectContext
    private let openAI: OpenAIManager
    private let refreshNotifier: RefreshNotifier
    private let iCloud: ICloudSyncService
    private let resetService: ResetService

    // Keep track of original name to decide if toast is needed
    private var originalName: String = ""

    // MARK: – Init
    init(context: NSManagedObjectContext,
         openAI: OpenAIManager,
         refreshNotifier: RefreshNotifier,
         iCloudService: ICloudSyncService = ICloudSyncService(),
         resetService: ResetService? = nil) {

        self.context         = context
        self.openAI          = openAI
        self.refreshNotifier = refreshNotifier
        self.iCloud          = iCloudService
        // use the one caller passed in, or create a new one with context
        self.resetService    = resetService ?? ResetService(context: context)
    }
    // MARK: – Intent(s)
    func onAppear() {
        Task { await checkICloud(showAlert: false) }
    }

    func inviteFriends() {
        showingShareSheet = true
    }

    func feedbackTapped() {
        showingFeedbackSheet = true
    }

    func rateAppTapped() {
        showRateAlert = true
    }

    func openAppStoreForRating() {
        if let url = URL(string: "itms-apps://itunes.apple.com/us/app/vinobytes/6736579105?action=write-review"),
           UIApplication.shared.canOpenURL(url) {
            UIApplication.shared.open(url)
        } else if let webURL = URL(string: "https://apps.apple.com/us/app/vinobytes/6736579105?action=write-review") {
            UIApplication.shared.open(webURL)
        }
    }

    // MARK: – iCloud
    func checkICloud(showAlert: Bool) async {
        isCheckingICloud = true
        do {
            let available = try await iCloud.isICloudAvailable()
            isICloudAvailable = available
            if showAlert {
                activeAlert = available ? .iCloudEnabled : .iCloudDisabled
            }
        } catch {
            errorMessage = error.localizedDescription
            isICloudAvailable = false
        }
        isCheckingICloud = false
    }

    // MARK: – Resets
    func resetMyWines() {
        do {
            let deleted = try resetService.deleteAllWines()
            showingMyWinesResetToast = true
            refreshNotifier.needsRefresh = true
            print("Deleted \(deleted) wines")
        } catch {
            errorMessage = error.localizedDescription
        }
    }

    func resetFlashcardSessions() {
        do {
            let deleted = try resetService.deleteAllSessions()
            showingFlashcardResetToast = true
            print("Deleted \(deleted) sessions")
        } catch {
            errorMessage = error.localizedDescription
        }
    }

    func resetConversationHistory() {
        openAI.resetConversationHistory()
        showingConversationResetToast = true
    }

    // MARK: – Name change helper
    func beginNameChange(currentName: String) {
        originalName = currentName
        showingChangeNameSheet = true
    }

    func endNameChange(newName: String) {
        if newName != originalName {
            showingNameChangeSuccessToast = true
        }
    }
}

// MARK: – ICloudSyncService (lightweight)
struct ICloudSyncService {
    private let container = CKContainer(identifier: "iCloud.com.vinobytes.VinoBytes1")
    func isICloudAvailable() async throws -> Bool {
        try await withCheckedThrowingContinuation { cont in
            container.accountStatus { status, error in
                if let error = error { cont.resume(throwing: error); return }
                cont.resume(returning: status == .available)
            }
        }
    }
}

struct ResetService {
    private let ctx: NSManagedObjectContext
    init(context: NSManagedObjectContext) { self.ctx = context }

    /// Deletes every `WineEntity` and returns the count removed.
    func deleteAllWines() throws -> Int {
        let req: NSFetchRequest<WineEntity> = WineEntity.fetchRequest()
        let items = try ctx.fetch(req)
        items.forEach(ctx.delete)
        try ctx.save()

        // 🔄 Force Core Data to expunge any in‑memory objects so UI always re‑fetches fresh data.
        ctx.refreshAllObjects()

        return items.count
    }

    func deleteAllSessions() throws -> Int {
        let req: NSFetchRequest<StudySession> = StudySession.fetchRequest()
        let items = try ctx.fetch(req)
        items.forEach(ctx.delete)
        try ctx.save()
        return items.count
    }
}
