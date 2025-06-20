//
//  FoodWinePairingListView.swift
//  VinoBytes
//
//  Created by Logan Rausch on 6/2/24.
//
//  NOTE: MVVM Decision
//  ───────────────────
//  This view only performs trivial UI‑oriented work (static sort, simple “locked” row rule,
//  paywall sheet presentation). No heavy business or persistence logic is involved, so a
//  separate ViewModel would add noise without value. If we later introduce search, filtering,
//  or remote data loading, we can promote those rules to a dedicated FoodWinePairingsViewModel.
//


import Foundation
import SwiftUI
import RevenueCat
import RevenueCatUI

struct FoodWinePairingsListView: View {
    @EnvironmentObject var authViewModel: AuthViewModel
    @State private var isPaywallPresented = false
    
    // Sorting the pairings data alphabetically by the food name
    var sortedPairings: [FoodWinePairing] {
        foodWinePairingsData.sorted { $0.food < $1.food }
    }

    var body: some View {
        VStack {
            List(sortedPairings) { pairing in
                            pairingRow(pairing: pairing)
                        }
                        .listStyle(PlainListStyle())
                    }
                    .padding() // Adjust this value if necessary
                    .navigationTitle("Food & Wine Pairings")
                    .sheet(isPresented: $isPaywallPresented) {
                        PaywallView()
                            .environmentObject(authViewModel)
                    }
                }
    
    @ViewBuilder
       private func pairingRow(pairing: FoodWinePairing) -> some View {
           // Determine if locked: if user has no subscription and food doesn't start with 'a' or 'b'
           let isLocked = !authViewModel.hasActiveSubscription &&
                          !pairing.food.lowercased().hasPrefix("a") &&
                          !pairing.food.lowercased().hasPrefix("b")

           if isLocked {
               Button(action: {
                   isPaywallPresented = true
               }) {
                   HStack {
                       Text(pairing.food)
                           .foregroundColor(.gray)
                       Spacer()
                       Image(systemName: "lock.fill")
                           .foregroundColor(.burgundy)
                   }
                   .padding(.vertical, 5)
                   .contentShape(Rectangle())
               }
               .buttonStyle(PlainButtonStyle())
           } else {
               NavigationLink(destination: FoodWinePairingsDetailView(foodWinePairing: pairing)) {
                   HStack {
                       Text(pairing.food)
                           .foregroundColor(.primary)
                       Spacer()
                   }
                   .padding(.vertical, 5)
               }
           }
       }
   }

   struct FoodWinePairingsListView_Previews: PreviewProvider {
       static var previews: some View {
           // Provide a mock AuthViewModel if necessary
           NavigationView {
               FoodWinePairingsListView()
                   .environmentObject(AuthViewModel())
           }
       }
   }
