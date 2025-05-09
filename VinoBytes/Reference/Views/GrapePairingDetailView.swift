//
//  GrapePairingDetailView.swift
//  VinoBytes
//
//  Created by Logan Rausch on 5/9/25.
//

import SwiftUI

struct GrapePairingDetailView: View {
    var grape: GrapeDetail

    var body: some View {
        ScrollView {
            VStack(alignment: .leading, spacing: 20) {
                Text(grape.name)
                    .font(.title)
                    .fontWeight(.bold)
                
                Text(grape.description)
                    .font(.body)
                
                Text("Serving Suggestions")
                    .font(.headline)
                    .padding(.top)
                
                Text("Temperature: \(grape.servingTemperature)")
                Text("Glass: \(grape.glassType)")
                Text("Decanting: \(grape.decantingRecommendation)")
                
                Spacer()
            }
            .padding()
            .navigationTitle("Grape Details")
        }
    }
}
