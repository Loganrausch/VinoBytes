//
//  SummaryCardView.swift
//  VinoBytes
//
//  Created by Logan Rausch on 5/9/25.
//

import SwiftUI
import Foundation

// Custom Card View for Summary Info
struct SummaryCardView: View {
    var title: String
    var value: String

    var body: some View {
        HStack {
            Text(title)
                .font(.headline)
                .foregroundColor(.black)
            Spacer()
            Text(value)
                .font(.body)
                
        }
        .padding()
        .background(RoundedRectangle(cornerRadius: 10).fill(Color.latte))
        .shadow(radius: 3)
    }
}
