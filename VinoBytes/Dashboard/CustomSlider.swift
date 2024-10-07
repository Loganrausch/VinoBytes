//
//  CustomSlider.swift
//  VinoBytes
//
//  Created by Logan Rausch on 10/6/24.
//

import Foundation
import SwiftUI

struct CustomSlider: View {
    @Binding var value: CGFloat
    let range: ClosedRange<CGFloat>
    let thumbColor: Color

    var body: some View {
        GeometryReader { geometry in
            ZStack(alignment: .leading) {
                Rectangle()
                    .frame(height: 5)
                    .foregroundColor(Color.gray.opacity(0.5)) // Slider track color
                Rectangle()
                    .frame(width: thumbXPosition(in: geometry.size.width), height: 5)
                    .foregroundColor(Color.lightMaroon) // Active slider track color
                Circle()
                    .foregroundColor(thumbColor) // Custom thumb color
                    .frame(width: 28, height: 28)
                    .offset(x: thumbXPosition(in: geometry.size.width) - 14)
                    .gesture(
                        DragGesture()
                            .onChanged { gesture in
                                self.value = value(from: gesture.location.x, width: geometry.size.width)
                            }
                    )
            }
        }
    }

    private func value(from xOffset: CGFloat, width: CGFloat) -> CGFloat {
        let sliderRange = width - 28
        let adjustedValue = min(max(0, xOffset - 14), sliderRange) / sliderRange
        return range.lowerBound + adjustedValue * (range.upperBound - range.lowerBound)
    }

    private func thumbXPosition(in width: CGFloat) -> CGFloat {
        let normalizedValue = (value - range.lowerBound) / (range.upperBound - range.lowerBound)
        return normalizedValue * (width - 28) + 14
    }
}
