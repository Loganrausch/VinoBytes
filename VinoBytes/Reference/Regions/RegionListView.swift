//
//  RegionListView.swift
//  VinoBytes
//
//  Created by Logan Rausch on 6/3/24.
//

import Foundation

import SwiftUI

struct RegionListView: View {
    let countries = RegionData.countries

    var body: some View {
        List {
            ForEach(countries, id: \.name) { country in
                Section(header: Text(country.name)) {
                    ForEach(country.regions, id: \.name) { region in
                        NavigationLink(destination: RegionDetailView(region: region)) {
                            Text(region.name)
                        }
                    }
                }
            }
        }
        .navigationTitle("Regions")
    }
}

struct RegionListView_Previews: PreviewProvider {
    static var previews: some View {
        NavigationView {
            RegionListView()
        }
    }
}
