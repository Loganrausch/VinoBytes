//
//  GrapeDetailView.swift
//  VinoBytes
//
//  Created by Logan Rausch on 6/2/24.
//

import SwiftUI

struct GrapeDetailView: View {
    var grape: Grape

    var body: some View {
        ScrollView {
            VStack(alignment: .leading, spacing: 20) {
                // Grape Image
                Image(grape.imageName)
                                    .resizable()
                                    .scaledToFit()
                                    .frame(maxWidth: .infinity) // Make the image take the full width
                                    .frame(height: 300) // Adjust the height as needed
                                    .clipped()
                                    .cornerRadius(10)
                                    .padding(.horizontal)
                                    .padding(.top)

                // Grape Name
                Text(grape.name)
                    .font(.largeTitle)
                    .fontWeight(.bold)
                    .padding(.horizontal)

                // Grape Details
                Text(grape.details)
                    .font(.body)
                    .padding(.horizontal)

                // Grape Icons (if any)
                if !grape.iconNames.isEmpty {
                    HStack {
                        ForEach(grape.iconNames, id: \.self) { iconName in
                            Image(systemName: iconName)
                                .resizable()
                                .scaledToFit()
                                .frame(width: 40, height: 40)
                                .padding()
                        }
                    }
                    .padding(.horizontal)
                }

                // Additional Information Section
                VStack(alignment: .leading, spacing: 10) {
                    Text("Additional Information")
                        .font(.headline)
                        .padding(.horizontal)

                    Text("Here you can add more details or sections related to the grape.")
                        .padding(.horizontal)
                }
                .padding(.top)
            }
            .navigationTitle(grape.name)
            .navigationBarTitleDisplayMode(.inline)
        }
    }
}

struct GrapeDetailView_Previews: PreviewProvider {
    static var previews: some View {
        GrapeDetailView(grape: Grape(name: "Sample Grape", details: "Sample details about the grape, including its origins, typical flavor profile, and regions where it's grown.", imageName: "sample_grape", iconNames: ["leaf", "drop"]))
    }
}
