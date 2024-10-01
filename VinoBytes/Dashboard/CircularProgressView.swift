//
//  CircularProgressView.swift
//  VinoBytes
//
//  Created by Logan Rausch on 9/23/24.
//

import Foundation
import SwiftUI

// CircularProgressView to display overall progress
struct CircularProgressView: View {
    var progress: Double  // Value between 0 and 1

    var body: some View {
        ZStack {
            // Background circle
            Circle()
                .stroke(lineWidth: 5.0)
                .opacity(0.3)
                .foregroundColor(Color("LightMaroon"))
            
            // Progress circle
            Circle()
                .trim(from: 0.0, to: CGFloat(min(self.progress, 1.0)))
                .stroke(style: StrokeStyle(lineWidth: 8.0, lineCap: .round, lineJoin: .round))
                .foregroundColor(Color("LightMaroon"))
                .rotationEffect(Angle(degrees: 270.0))
                .animation(.linear, value: progress)
            
            // Progress text
                        Text(String(format: "%.1f %%", min(self.progress, 1.0)*100.0))
                            .font(.title2)
                            .bold()
                            .foregroundColor(.black)
                    }
                    .frame(width: 120.0, height: 120.0)
                }
            }
