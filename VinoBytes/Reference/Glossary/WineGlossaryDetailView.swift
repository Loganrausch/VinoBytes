//
//  WineGlossaryDetailView.swift
//  VinoBytes
//
//  Created by Logan Rausch on 6/3/24.
//

import Foundation

import SwiftUI

struct WineGlossaryDetailView: View {
    var entry: GlossaryEntry

    var body: some View {
        ScrollView {
            VStack(alignment: .leading, spacing: 20) {
                // Term
                Text(entry.term)
                    .font(.largeTitle)
                    .fontWeight(.bold)
                    .padding(.horizontal)

                // Definition
                Text(entry.definition)
                    .font(.body)
                    .padding(.horizontal)

                // Additional Information
                VStack(alignment: .leading, spacing: 10) {
                    Text("Additional Information")
                        .font(.headline)
                        .padding(.horizontal)

                    Text(entry.additionalInfo)
                        .padding(.horizontal)
                }
                .padding(.top)
            }
            .navigationTitle(entry.term)
            .navigationBarTitleDisplayMode(.inline)
        }
    }
}

struct WineGlossaryDetailView_Previews: PreviewProvider {
    static var previews: some View {
        WineGlossaryDetailView(entry: GlossaryEntry(term: "Sample Term", definition: "Sample definition of the wine term.", additionalInfo: "Additional information about the wine term."))
    }
}
