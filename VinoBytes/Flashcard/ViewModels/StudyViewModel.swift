//
//  StudyViewModel.swift
//  VinoBytes
//
//  Created by Logan Rausch on 5/8/25.
//

import Foundation
import Combine
import RevenueCat             // keep this only if you call Purchases here

@MainActor
final class StudyViewModel: ObservableObject {

    // MARK: - Published state the View binds to
    @Published var selectedRegions       = Set<String>()
    @Published var isShowingPaywall      = false
    @Published var isStartingSession     = false   // drives NavigationLink
    @Published var lastSession: StudySession?

    // MARK: - Dependencies
    private let flashcardManager: FlashcardManager
    private let sessionManager: StudySessionManager
    private let auth: AuthViewModel

    // MARK: - Region list source of truth
    let allRegions: [StudyRegion] = RegionCatalog.allRegions
    private let freeRegionNames   = Set(RegionCatalog.free)

    // MARK: - Init
    init(flashcardManager: FlashcardManager = .shared,
         sessionManager: StudySessionManager = .shared,
         auth: AuthViewModel) {

        self.flashcardManager = flashcardManager
        self.sessionManager   = sessionManager
        self.auth             = auth

        // Listen for session end → surface to the view
        sessionManager.$lastSession
            .receive(on: DispatchQueue.main)
            .assign(to: &$lastSession)
    }

    // MARK: - Intents --------------------------------------------------------

    /// User tapped a region chip.
    func tap(region: StudyRegion) {
        if isRegionLocked(region) {
            requestSubscription()
            return
        }
        if selectedRegions.contains(region.name) {
            selectedRegions.remove(region.name)
        } else {
            selectedRegions.insert(region.name)
        }
    }

    /// Toggle Select‑All / Deselect‑All.
    func toggleSelectAll() {
        let target = auth.hasActiveSubscription
            ? Set(allRegions.map(\.name))
            : freeRegionNames

        selectedRegions = (selectedRegions == target) ? [] : target
    }

    /// “Start Study Session” button pressed.
    func start() {
        guard !selectedRegions.isEmpty else { return }
        sessionManager.startNewSession()
        isStartingSession = true
    }

    // MARK: - Helper API for the View ---------------------------------------

    func isRegionLocked(_ region: StudyRegion) -> Bool {
        region.isPremium && !auth.hasActiveSubscription
    }

    func flashcardsForSelection() -> [Flashcard] {
        flashcardManager.getFlashcards(for: selectedRegions)
    }

    func selectionButtonTitle() -> String {
        let total = auth.hasActiveSubscription ? allRegions.count : freeRegionNames.count
        return selectedRegions.count == total ? "Deselect All" : "Select All"
    }

    // MARK: - Private --------------------------------------------------------

    private func requestSubscription() {
        Purchases.shared.getOfferings { [weak self] offerings, error in
            guard let self else { return }
            if let offering = offerings?.current, !offering.availablePackages.isEmpty {
                self.isShowingPaywall = true
            } else if let error { print("Offerings error: \(error)") }
        }
    }
}
