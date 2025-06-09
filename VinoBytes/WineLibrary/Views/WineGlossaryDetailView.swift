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

                // Definition Title
                Text("Definition")
                    .font(.headline)
                    .padding(.horizontal)
                    .foregroundStyle(Color("Burgundy"))
                
                // Definition
                Text(entry.definition)
                    .font(.body)
                    .padding()
                    .background(Color.secondary.opacity(0.1))
                    .cornerRadius(10)
                    .padding(.horizontal)

                // Additional Information Title
                Text("Additional Information")
                    .font(.headline)
                    .padding(.horizontal)
                    .foregroundStyle(Color("Burgundy"))

                // Additional Information
                Text(entry.additionalInfo)
                    .font(.body)
                    .padding()
                    .background(Color.secondary.opacity(0.1))
                    .cornerRadius(10)
                    .padding(.horizontal)
            }
            .frame(maxWidth: .infinity, alignment: .leading) // Enforces leading alignment
            .padding(.top) // Optionally add top padding for spacing from the top edge
            .navigationTitle(entry.term)
            .navigationBarTitleDisplayMode(.inline)
        }
    }
}

struct WineGlossaryDetailView_Previews: PreviewProvider {
    static var previews: some View {
        NavigationView {
            WineGlossaryDetailView(entry: GlossaryEntry(term: "Phloem", definition: "The vascular tissue in plants responsible for transporting nutrients.", additionalInfo: "In grapevines, phloem distributes the sugars produced by photosynthesis."))
        }
    }
}
