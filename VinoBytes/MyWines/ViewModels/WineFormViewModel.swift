//
//  WineFormViewModel.swift
//  VinoBytes
//
//  Created by Logan Rausch on 5/9/25.
//

import SwiftUI
import CoreData
import Combine

@MainActor
final class WineFormViewModel: ObservableObject {

    // MARK: - Form fields
    @Published var producer = ""
    @Published var wineName = ""
    @Published var wineType = "Red"
    @Published var region   = ""
    @Published var grape    = ""
    @Published var vintage  = ""
    @Published var isNonVintage = false
    @Published var rating   = 0
    @Published var sight    = ""
    @Published var smellTaste = ""
    @Published var acid     = ""
    @Published var alcohol  = ""
    @Published var body     = ""
    @Published var sweetness = ""
    @Published var tannin   = ""
    @Published var finalThoughts = ""
    @Published var selectedImage: UIImage?
    @Published var isShowingImagePicker = false

    // Alerts & navigation
    @Published var showingAlert = false
    @Published var alertMessage = ""
    @Published var didSave      = false

    // Dependencies
    private let context:  NSManagedObjectContext
    private let refresh:  RefreshNotifier
    let   existingEntity: WineEntity?        // nil ⇒ adding

    // MARK: - Init (pre‑fill when editing)
    init(entity: WineEntity? = nil,
         context: NSManagedObjectContext,
         refresh: RefreshNotifier) {

        self.existingEntity = entity
        self.context        = context
        self.refresh        = refresh

        if let e = entity {
            producer  = e.producer ?? ""
            wineName  = e.wineName ?? ""
            wineType  = e.wineType ?? "Red"
            region    = e.region ?? ""
            grape     = e.grape ?? ""
            vintage   = e.vintage ?? ""
            isNonVintage = e.vintage == "NV"
            rating    = Int(e.rating)
            sight     = e.sight ?? ""
            smellTaste = e.smellTaste ?? ""
            acid      = e.acid ?? ""
            alcohol   = e.alcohol ?? ""
            body      = e.structureBody ?? ""
            sweetness = e.sweetness ?? ""
            tannin    = e.tannin ?? ""
            finalThoughts = e.finalThoughts ?? ""
            if let data = e.imageData {
                selectedImage = UIImage(data: data)
            }
        }
    }

    // MARK: - User intents
    func toggleNV(isNV: Bool) {
        isNonVintage = isNV
        vintage = isNV ? "NV" : ""
    }

    func save() {
        guard validate() else { return }

        let wine = existingEntity ?? WineEntity(context: context)
        writeFields(into: wine)

        do {
            try context.save()
            refresh.needsRefresh = true
            incrementReviewCounter()
            didSave = true
        } catch {
            alertMessage = "Failed to save wine: \(error.localizedDescription)"
            showingAlert = true
        }
    }

    // MARK: - Private helpers
    private func validate() -> Bool {
        guard !region.isEmpty else {
            alertMessage = "Please enter a region for the wine."
            showingAlert = true
            return false
        }
        return true
    }

    private func writeFields(into wine: WineEntity) {
        wine.id = wine.id ?? UUID()
        wine.producer = producer
        wine.wineName = wineName
        wine.wineType = wineType
        wine.region   = region
        wine.grape    = grape
        wine.vintage  = vintage
        wine.rating   = Int16(rating)
        wine.sight    = sight
        wine.smellTaste = smellTaste
        wine.acid     = acid
        wine.alcohol  = alcohol
        wine.structureBody = body
        wine.sweetness = sweetness
        wine.tannin   = tannin
        wine.finalThoughts = finalThoughts
        wine.imageData = selectedImage?.jpegData(compressionQuality: 1.0)
        if existingEntity == nil { wine.dateAdded = Date() }
    }

    private func incrementReviewCounter() {
        let key = "saveCount"
        let newCount = UserDefaults.standard.integer(forKey: key) + 1
        UserDefaults.standard.setValue(newCount, forKey: key)
        if [5, 20, 50, 100].contains(newCount) {
            ReviewRequestHelper.requestReviewIfAppropriate()
        }
    }
}
