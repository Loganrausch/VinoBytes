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
            
            Divider()
                .padding(.horizontal)
                .background(Color.black)
            
            Text("See Grapes Section for More Pairings")
                .font(.footnote)
                .foregroundColor(.gray)
                .padding(.top, 10)
        }
        .padding(.bottom, 20) // Adjust this value if necessary
        .navigationTitle("Food & Wine Pairings")
    }
}

struct FoodWinePairingsListView_Previews: PreviewProvider {
    static var previews: some View {
        FoodWinePairingsListView()
    }
}
