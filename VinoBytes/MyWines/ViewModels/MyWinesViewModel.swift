//
//  MyWinesViewModel.swift
//  VinoBytes
//
//  Created by Logan Rausch on 5/9/25.
//

import Foundation
import SwiftUI
import CoreData
import RevenueCat
import Combine

// MARK: - ViewModel
@MainActor
final class MyWinesViewModel: NSObject, ObservableObject {

    // ────────── Published state for the View ──────────
    @Published var searchText        = ""
    @Published var groupedWines: [(String, [WineEntity])] = []
    @Published var isAddingWine      = false
    @Published var showUpgradeAlert  = false
    @Published var isShowingPaywall  = false

    // ────────── Constants & DI ──────────
    private let maxFree = 5
    private let context: NSManagedObjectContext
    private let auth:    AuthViewModel
    private var frc:     NSFetchedResultsController<WineEntity>!
    private var cancellables = Set<AnyCancellable>()

    // ────────── Computed helpers for View ──────────
    var shouldShowBanner: Bool { !auth.hasActiveSubscription }
    var canAddWine: Bool   { auth.hasActiveSubscription || (wineCount < maxFree) }
    var wineCount: Int     { frc.fetchedObjects?.count ?? 0 }

    // ────────── Init ──────────
    init(context: NSManagedObjectContext,
         auth: AuthViewModel,
         refresh: RefreshNotifier) {

        self.context = context
        self.auth    = auth
        super.init()

        // 1. Set up FRC
        let request: NSFetchRequest<WineEntity> = WineEntity.fetchRequest()
        request.sortDescriptors = [
            NSSortDescriptor(keyPath: \WineEntity.region,   ascending: true),
            NSSortDescriptor(keyPath: \WineEntity.producer, ascending: true)
        ]
        frc = NSFetchedResultsController(
            fetchRequest: request,
            managedObjectContext: context,
            sectionNameKeyPath: nil,
            cacheName: nil)
        frc.delegate = self
        try? frc.performFetch()

        // 2. Initial grouping
        regroup()

        // 3. Combine search text with refresh notifier
        $searchText
            .removeDuplicates()
            .sink { [weak self] _ in self?.regroup() }
            .store(in: &cancellables)

        refresh.$needsRefresh
            .filter { $0 }
            .sink { [weak self] _ in
                context.refreshAllObjects()
                try? self?.frc.performFetch()
                self?.regroup()
                refresh.needsRefresh = false
            }
            .store(in: &cancellables)
    }

    // ────────── Public intents ──────────
    func addTapped() {
        canAddWine ? (isAddingWine = true) : (showUpgradeAlert = true)
    }

    func delete(at offsets: IndexSet, in wines: [WineEntity]) {
        offsets.map { wines[$0] }.forEach(context.delete)
        try? context.save()
    }

    func startSubscriptionProcess() {
        Purchases.shared.getOfferings { [weak self] offerings, error in
            if let offering = offerings?.current, !offering.availablePackages.isEmpty {
                self?.isShowingPaywall = true
            } else if let error { print("Offerings error: \(error)") }
        }
    }

    // ────────── Private helpers ──────────
    private func regroup() {
        let all = frc.fetchedObjects ?? []
        let filtered: [WineEntity] = searchText.isEmpty ? all : all.filter { wine in
            let q = searchText.lowercased()
            return (wine.producer ?? "").lowercased().contains(q) ||
                   (wine.wineName ?? "").lowercased().contains(q) ||
                   (wine.region ?? "").lowercased().contains(q) ||
                   (wine.grape  ?? "").lowercased().contains(q) ||
                   (wine.vintage ?? "").lowercased().contains(q)
        }
        groupedWines = Dictionary(grouping: filtered, by: { $0.region ?? "Unknown" })
            .map { ($0.key, $0.value) }
            .sorted { $0.0 < $1.0 }
    }
}

// MARK: - FRC delegate ➜ regroup on Core‑Data changes
// MARK: - FRC delegate → regroup on Core‑Data changes
extension MyWinesViewModel: NSFetchedResultsControllerDelegate {

    /// Must be non‑isolated to match the protocol.
    nonisolated func controllerDidChangeContent(
        _ controller: NSFetchedResultsController<NSFetchRequestResult>
    ) {
        // Hop to the main actor to access @Published state.
        Task { @MainActor in
            self.regroup()
        }
    }
}
