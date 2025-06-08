//
//  RegionCatalog.swift
//  VinoBytes
//
//  Created by Logan Rausch on 5/8/25.
//

import Foundation

enum RegionCatalog {

    // MARK: - Raw lists
    static let free: [String] = [
        "Argentina",
        "Hungary",
        "Portugal"
    ]

    static let premium: [String] = [
        "Australia",
        "Austria",
        "Chile",
        "France",
        "Germany",
        "Greece",
        "Italy",
        "New Zealand",
        "South Africa",
        "Spain",
        "USA"
    ]

    // MARK: - Pre‑baked StudyRegion arrays
    /// Free regions wrapped in StudyRegion structs
    static var freeRegions: [StudyRegion] {
        free.map { StudyRegion(name: $0, isPremium: false) }
    }

    /// Premium regions wrapped in StudyRegion structs
    static var premiumRegions: [StudyRegion] {
        premium.map { StudyRegion(name: $0, isPremium: true) }
    }

    /// All regions, already merged and alphabetically sorted.
    static var allRegions: [StudyRegion] {
        (freeRegions + premiumRegions).sorted { $0.name < $1.name }
    }
}
