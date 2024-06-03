//
//  RegionDetailView.swift
//  VinoBytes
//
//  Created by Logan Rausch on 6/3/24.
//

import SwiftUI

struct RegionDetailView: View {
    var region: Region

    var body: some View {
        ScrollView {
            VStack(alignment: .leading, spacing: 20) {
                // Region Image
                Image(region.imageName)
                    .resizable()
                    .scaledToFit()
                    .frame(height: 200)
                    .clipped()
                    .cornerRadius(10)
                    .padding(.horizontal)
                    .padding(.top)

                // Region Name
                Text(region.name)
                    .font(.largeTitle)
                    .fontWeight(.bold)
                    .padding(.horizontal)

                // Region Details
                Text(region.details)
                    .font(.body)
                    .padding(.horizontal)

                // Region Icons (if any)
                if !region.iconNames.isEmpty {
                    HStack {
                        ForEach(region.iconNames, id: \.self) { iconName in
                            Image(systemName: iconName)
                                .resizable()
                                .scaledToFit()
                                .frame(width: 40, height: 40)
                                .padding()
                        }
                    }
                    .padding(.horizontal)
                }

                // Additional Information Sections
                VStack(alignment: .leading, spacing: 10) {
                    Text("Subregions")
                        .font(.headline)
                        .padding(.horizontal)

                    ForEach(region.subregions, id: \.self) { subregion in
                        Text(subregion)
                            .padding(.horizontal)
                    }
                }
                .padding(.top)

                VStack(alignment: .leading, spacing: 10) {
                    Text("Climate")
                        .font(.headline)
                        .padding(.horizontal)

                    Text(region.climate)
                        .padding(.horizontal)
                }
                .padding(.top)

                VStack(alignment: .leading, spacing: 10) {
                    Text("Soil")
                        .font(.headline)
                        .padding(.horizontal)

                    Text(region.soil)
                        .padding(.horizontal)
                }
                .padding(.top)

                VStack(alignment: .leading, spacing: 10) {
                    Text("Key Wine Styles")
                        .font(.headline)
                        .padding(.horizontal)

                    Text(region.keyWineStyles)
                        .padding(.horizontal)
                }
                .padding(.top)
            }
            .navigationTitle(region.name)
            .navigationBarTitleDisplayMode(.inline)
        }
    }
}

struct RegionDetailView_Previews: PreviewProvider {
    static var previews: some View {
        RegionDetailView(region: Region(name: "Sample Region", details: "Sample details about the region, including its origins, typical flavor profile, and regions where it's grown.", subregions: ["Subregion 1", "Subregion 2"], climate: "Sample climate description.", soil: "Sample soil description.", keyWineStyles: "Sample key wine styles.", imageName: "sample_region", iconNames: ["leaf", "drop"]))
    }
}
