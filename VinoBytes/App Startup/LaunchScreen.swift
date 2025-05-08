//
//  LaunchScreen.swift
//  VinoBytes
//
//  Created by Logan Rausch on 10/6/24.
//

import Foundation
import SwiftUI

struct LaunchScreen: View {
    @Binding var isShowingLaunchScreen: Bool
    @State private var opacity: Double = 0  // Single opacity variable for both text and image
    
    var body: some View {
        ZStack {
            
            VStack(spacing: 20) {
                Image("vinobytes_logo_final")
                    .resizable()
                    .scaledToFit()
                    .frame(width: 200, height: 200)
                    .opacity(opacity)  // Use the same opacity for image and text
                
            }
            .onAppear {
                withAnimation(Animation.easeIn(duration: 2)) {
                    self.opacity = 1  // Fade in everything together
                }
                DispatchQueue.main.asyncAfter(deadline: .now() + 3) {
                    withAnimation(Animation.easeOut(duration: 1)) {
                        self.opacity = 0  // Fade out everything together
                    }
                    DispatchQueue.main.asyncAfter(deadline: .now() + 1) {
                        isShowingLaunchScreen = false
                    }
                }
            }
        }
        .preferredColorScheme(.light) // Apply light mode to the entire view
    }
}
