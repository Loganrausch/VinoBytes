//
//  PulsingDot.swift
//  VinoBytes
//
//  Created by Logan Rausch on 3/10/25.
//

import SwiftUI

struct PulsingWineGlass: View {
    @State private var pulse = false

    var body: some View {
        Image(systemName: "wineglass")
            .resizable()
            .scaledToFit()
            .frame(width: 20, height: 20)
            .foregroundColor(Color("Maroon"))  // reference your asset color
            .scaleEffect(pulse ? 1.3 : 1.0)
            .animation(
                .easeInOut(duration: 0.7).repeatForever(autoreverses: true),
                value: pulse
            )
            .onAppear {
                pulse = true
            }
    }
}
