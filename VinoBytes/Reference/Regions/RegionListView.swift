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
            ForEach(countries.sorted(by: { $0.name < $1.name }), id: \.name) { country in
                DisclosureGroup(
                    content: {
                        ForEach(country.regions.sorted(by: { $0.name < $1.name }), id: \.name) { region in
                            NavigationLink(destination: RegionDetailView(countryName: country.name, region: region)) {
                                Text(region.name)
                            }
                        }
                    },
                    label: {
                        Text(country.name)
                            .font(.headline)
                    }
                )
                .padding(.vertical, 5)
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
