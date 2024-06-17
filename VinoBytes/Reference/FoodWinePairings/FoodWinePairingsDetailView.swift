//
//  FoodWinePairingsDetailView.swift
//  VinoBytes
//
//  Created by Logan Rausch on 6/14/24.
//

import SwiftUI

struct FoodWinePairingsDetailView: View {
    var foodWinePairing: FoodWinePairing

    var body: some View {
        VStack(alignment: .leading, spacing: 20) {
            Text("\(foodWinePairing.food) & \(foodWinePairing.wine)")
                .font(.largeTitle)
                .fontWeight(.bold)
            
            Text(foodWinePairing.description)
                .font(.body)
            
            Spacer()
        }
        .padding()
        .navigationTitle("Food & Wine Pairing Detail")
    }
}

struct FoodWinePairingsDetailView_Previews: PreviewProvider {
    static var previews: some View {
        FoodWinePairingsDetailView(foodWinePairing: foodWinePairingsData[0])
    }
}
