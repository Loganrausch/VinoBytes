//
//  WhiteBackgroundView.swift
//  VinoBytes
//
//  Created by Logan Rausch on 6/18/24.
//

import Foundation

import SwiftUI

struct WhiteBackgroundView: View {
    @State private var originalBrightness: CGFloat = UIScreen.main.brightness

    var body: some View {
        VStack {
            VStack(spacing: -25) { // Adjust spacing as needed
                Text("White Display for Assessing Wine")
                    .font(.headline)
                    .bold()
                    .padding()
                Text("(Swipe down to close)")
                    .font(.subheadline)
                    .bold()
                    .padding()
            }
            Spacer()
        }
        .background(Color.white)
        .edgesIgnoringSafeArea(.all)
        .onAppear {
            originalBrightness = UIScreen.main.brightness
            UIScreen.main.brightness = 1.0
        }
        .onDisappear {
            UIScreen.main.brightness = originalBrightness
        }
    }
}
