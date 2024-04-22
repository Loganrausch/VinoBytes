//
//  WineData.swift
//  VinoDecks
//
//  Created by Logan Rausch on 3/29/24.
//

import Foundation
import SwiftUI

class WineData: ObservableObject {
    @Published var wines: [Wine] = []

    func updateWine(_ wine: Wine) {
        // Find the wine in the array and update it
        if let index = wines.firstIndex(where: { $0.id == wine.id }) {
            wines[index] = wine
        }
    }
}






