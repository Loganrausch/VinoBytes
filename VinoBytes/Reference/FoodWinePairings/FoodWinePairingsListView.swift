//
//  FoodWinePairingsListView.swift
//  VinoBytes
//
//  Created by Logan Rausch on 6/14/24.
//

import Foundation

import SwiftUI

struct FoodWinePairingsListView: View {
    var body: some View {
        List(foodWinePairingsData) { pairing in
            NavigationLink(destination: FoodWinePairingsDetailView(foodWinePairing: pairing)) {
                Text("\(pairing.food) & \(pairing.wine)")
            }
        }
        .navigationTitle("Food & Wine Pairings")
    }
}

struct FoodWinePairingsListView_Previews: PreviewProvider {
    static var previews: some View {
        FoodWinePairingsListView()
    }
}
