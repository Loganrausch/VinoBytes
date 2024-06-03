//
//  RegionData.swift
//  VinoBytes
//
//  Created by Logan Rausch on 6/3/24.
//

import Foundation

struct Region {
    let name: String
    let details: String
    let subregions: [String]
    let climate: String
    let soil: String
    let keyWineStyles: String
    let imageName: String // New property
    let iconNames: [String] // New property
}

struct Country {
    let name: String
    let regions: [Region]
}

struct RegionData {
    static let countries: [Country] = [
        Country(name: "Italy", regions: [
            Region(name: "Tuscany", details: "Details about Tuscany...", subregions: ["Chianti", "Brunello di Montalcino"], climate: "Mediterranean", soil: "Galestro, clay, and sand", keyWineStyles: "Sangiovese-based wines", imageName: "tuscany_image", iconNames: ["leaf", "drop"]),
            // Add more regions...
        ]),
        Country(name: "France", regions: [
            Region(name: "Bordeaux", details: "Details about Bordeaux...", subregions: ["Médoc", "Graves"], climate: "Maritime", soil: "Gravel, sand, and clay", keyWineStyles: "Cabernet Sauvignon and Merlot blends", imageName: "bordeaux_image", iconNames: ["leaf", "drop"]),
            // Add more regions...
        ]),
        // Add more countries and regions...
    ]
}
