//
//  LoadingDotsView.swift
//  VinoBytes
//
//  Created by Logan Rausch on 6/26/24.
//

import Foundation
import SwiftUI

struct WineGlassLoadingView: View {
    @State private var isActive = false
    
    let animation = Animation.linear(duration: 0.6).repeatForever(autoreverses: false)
    
    var body: some View {
        HStack(spacing: 8) { // Adjusted spacing to 10
            ForEach(0..<3, id: \.self) { index in
                Image(systemName: "wineglass.fill")
                    .font(.system(size: 10)) // Adjusted font size for better visibility
                    .foregroundColor(Color("Maroon"))
                    .scaleEffect(self.isActive ? 1.0 : 0.6)
                    .animation(self.animation.delay(Double(index) * 0.2), value: self.isActive)
            }
        }
        .padding(.all, 5) // Adds padding around the entire HStack
        .onAppear {
            self.isActive = true
        }
    }
}
