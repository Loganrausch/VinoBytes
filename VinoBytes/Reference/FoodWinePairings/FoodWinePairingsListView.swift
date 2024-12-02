import Foundation
import SwiftUI

struct FoodWinePairingsListView: View {
    // Sorting the pairings data alphabetically by the food name
    var sortedPairings: [FoodWinePairing] {
        foodWinePairingsData.sorted { $0.food < $1.food }
    }

    var body: some View {
        VStack {
            List(sortedPairings) { pairing in
                NavigationLink(destination: FoodWinePairingsDetailView(foodWinePairing: pairing)) {
                    Text(pairing.food)
                }
            }
            .listStyle(PlainListStyle())
        }
        .padding() // Adjust this value if necessary
        .navigationTitle("Food & Wine Pairings")
    }
}

struct FoodWinePairingsListView_Previews: PreviewProvider {
    static var previews: some View {
        FoodWinePairingsListView()
    }
}
