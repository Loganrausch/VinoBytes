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
        ScrollView {
            VStack(alignment: .leading, spacing: 20) {
                Text("\(foodWinePairing.food)")
                    .font(.largeTitle)
                    .fontWeight(.bold)
                    .padding(.top)

                Text(foodWinePairing.description)
                    .font(.body)
                    .padding(.bottom)

                Divider()

                Text("Pair with:")
                    .font(.headline)
                    .padding(.vertical)
                    .foregroundColor(.lightMaroon)

                // Sorting grapes alphabetically by name
                ForEach(foodWinePairing.grapes.sorted { $0.name < $1.name }, id: \.id) { grape in
                    NavigationLink(destination: GrapePairingDetailView(grape: grape)) {
                        HStack {
                            Text(grape.name)
                                .foregroundColor(.primary)
                            Spacer()
                            Image(systemName: "info.circle")
                                .foregroundColor(.lightMaroon)
                        }
                        .padding()
                        .background(Color.white)
                        .cornerRadius(10)
                        .shadow(radius: 4)
                    }
                }
            }
            .padding()
            .navigationTitle("Pairing Details")
        }
    }
}

struct FoodWinePairingsDetailView_Previews: PreviewProvider {
    static var previews: some View {
        FoodWinePairingsDetailView(foodWinePairing: foodWinePairingsData[0])
    }
}
