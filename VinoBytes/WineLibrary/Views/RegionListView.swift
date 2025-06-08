//
//  RegionListView.swift
//  VinoBytes
//
//  Created by Logan Rausch on 6/3/24.
//
//  NOTE: MVVM Decision
//  ───────────────────
//  This view only performs trivial UI‑oriented work (static sort, simple “locked” row rule,
//  paywall sheet presentation). No heavy business or persistence logic is involved, so a
//  separate ViewModel would add noise without value. If we later introduce search, filtering,
//  or remote data loading, we can promote those rules to a dedicated RegionListViewModel.
//

import SwiftUI
import RevenueCat
import RevenueCatUI

struct RegionListView: View {
    @EnvironmentObject var authViewModel: AuthViewModel  // Access subscription status
    @State private var isPaywallPresented = false       // Controls the presentation of the paywall

    let countries = RegionData.countries
    let freeCountries = ["Argentina", "Hungary", "Portugal"]

    var body: some View {
        List {
            ForEach(countries.sorted(by: { $0.name < $1.name }), id: \.name) { country in
                countryRow(country: country)
            }
        }
        .navigationTitle("Regions")
        .listStyle(InsetGroupedListStyle())
        .sheet(isPresented: $isPaywallPresented) {
            PaywallView()
                .environmentObject(authViewModel)
        }
    }
    
    @ViewBuilder
    private func countryRow(country: Country) -> some View {
        let isLocked = !authViewModel.hasActiveSubscription && !freeCountries.contains(country.name)

        if isLocked {
            Button(action: {
                isPaywallPresented = true
            }) {
                HStack {
                    Text(country.name)
                        .foregroundColor(.gray)
                    Spacer()
                    Image(systemName: "lock.fill")
                        .foregroundColor(.lightMaroon)
                }
                .padding(.vertical, 5)
                .contentShape(Rectangle())
            }
            .buttonStyle(PlainButtonStyle())
        } else {
            DisclosureGroup {
                ForEach(country.regions.sorted(by: { $0.name < $1.name }), id: \.name) { region in
                    NavigationLink(destination: RegionDetailView(countryName: country.name, region: region)) {
                        Text(region.name)
                    }
                }
            } label: {
                Text(country.name)
                    .font(.headline)
                    .foregroundColor(.primary)
                    .padding(.vertical, 5)
            }
        }
    }
}

struct RegionListView_Previews: PreviewProvider {
    static var previews: some View {
        NavigationView {
            RegionListView()
                .environmentObject(AuthViewModel())
        }
    }
}
