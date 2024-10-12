//
//  CardView.swift
//  VinoBytes
//
//  Created by Logan Rausch on 10/10/24.
//

import SwiftUI

struct CardView<Content: View>: View {
    let content: Content
    
    init(@ViewBuilder content: () -> Content) {
        self.content = content()
    }
    
    var body: some View {
        content
            .padding()
            .frame(maxWidth: .infinity, alignment: .leading) // Ensures full-width
            .background(
                RoundedRectangle(cornerRadius: 15)
                    .fill(Color.lightLatte)
                    .shadow(color: Color.black.opacity(0.4), radius: 5)
            )
            .padding(.horizontal, 16) // Outer padding to prevent touching screen edges
            .padding(.vertical, 8) // Vertical spacing between cards
    }
}
