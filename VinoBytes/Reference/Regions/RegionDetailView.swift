//
//  RegionDetailView.swift
//  VinoBytes
//
//  Created by Logan Rausch on 6/3/24.
//

import SwiftUI

struct RegionDetailView: View {
    var countryName: String
    var region: Region

    var body: some View {
        ScrollView {
            VStack(alignment: .leading, spacing: 20) {
                // Region Image
                // Uncomment the following line if images are included
                /*
                Image(region.imageName)
                    .resizable()
                    .scaledToFit()
                    .frame(maxWidth: .infinity)
                    .frame(height: 300)
                    .clipped()
                    .cornerRadius(10)
                    .padding(.horizontal)
                    .padding(.top)
                */

                // Region Name
                Text(region.name)
                    .font(.title)
                    .fontWeight(.bold)
                    .padding()
                    .background(Color.white) // Adds a background color to the title for better readability

                SectionBox(title: "Details") {
                    Text(region.details)
                }

                if !region.subregions.isEmpty {
                    SectionBox(title: "Subregions") {
                        VStack {
                            ForEach(region.subregions, id: \.self) { subregion in
                                Text(subregion)
                            }
                        }
                    }
                }

                SectionBox(title: "Climate") {
                    Text(region.climate)
                }

                SectionBox(title: "Soil") {
                                    VStack(alignment: .leading) {
                                        ForEach(region.soil, id: \.self) { soilType in
                                            Text(soilType)
                                        }
                                    }
                                }

                SectionBox(title: "Key Wine Styles") {
                    Text(region.keyWineStyles)
                }

                if !region.topProducers.isEmpty {
                    SectionBox(title: "Top Producers") {
                        VStack {
                            ForEach(region.topProducers, id: \.self) { producer in
                                Text(producer)
                            }
                        }
                    }
                }

                // Uncomment if icons are to be used
                /*
                if !region.iconNames.isEmpty {
                    SectionBox(title: "Icons") {
                        HStack {
                            ForEach(region.iconNames, id: \.self) { iconName in
                                Image(systemName: iconName)
                                    .resizable()
                                    .scaledToFit()
                                    .frame(width: 40, height: 40)
                                    .padding()
                            }
                        }
                    }
                }
                */
            }
            .navigationTitle(countryName)
            .navigationBarTitleDisplayMode(.inline)
        }
    }
}

// You do not need to redefine SectionBox if it's globally accessible.

struct RegionDetailView_Previews: PreviewProvider {
    static var previews: some View {
        let sampleRegion = Region(
            name: "Sample Region",
            details: "Detailed information about Sample Region.",
            subregions: ["Subregion 1", "Subregion 2"],
            climate: "Moderate",
            soil: ["Loamy"],
            keyWineStyles: "Red, White",
            topProducers: ["Sample Producer 1", "Sample Producer 2"], // Example producers
            imageName: "sample_region_image",
            iconNames: ["leaf", "drop"]
        )
        let sampleCountryName = "Sample Country"
        RegionDetailView(countryName: sampleCountryName, region: sampleRegion)
    }
}
