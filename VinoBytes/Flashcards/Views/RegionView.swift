//
//  RegionView.swift
//  VinoBytes
//
//  Created by Logan Rausch on 11/6/24.
//

import SwiftUI

struct RegionView: View {
    var region: String
    var isSelected: Bool
    var isLocked: Bool
    var fontSize: CGFloat
    var padding: CGFloat
    var action: () -> Void

    var body: some View {
        Button(action: action) {
            HStack {
                if isLocked {
                    // Left-aligned text with lock icon on the right
                    Text(region)
                        .font(.system(size: fontSize))
                        .lineLimit(1)  // Limit text to one line
                        .minimumScaleFactor(0.75)  // Allow text to scale down
                        .foregroundColor(.black.opacity(0.6))
                        .bold()
                    Spacer()
                    Image(systemName: "lock.fill")
                        .foregroundColor(.burgundy)
                } else {
                    // Centered text when not locked
                    Spacer()
                    Text(region)
                        .font(.system(size: fontSize))
                        .lineLimit(1)  // Limit text to one line
                        .minimumScaleFactor(0.75)  // Allow text to scale down
                        .foregroundColor(isSelected ? .latte : .black)
                        .bold()
                    Spacer()
                }
            }
            .padding(padding)
            .background(
                isSelected ?
                    Color("Burgundy").opacity(1) :
                    (isLocked ? Color.gray.opacity(0.2) : Color.latte.opacity(1))
            )
            .cornerRadius(5)
            .shadow(color: .gray, radius: 4)
            .overlay(
                RoundedRectangle(cornerRadius: 5)
                    .stroke(
                        isSelected ? Color.latte : (isLocked ? Color.gray.opacity(0.5) : Color.burgundy),
                        lineWidth: 2
                    )
            )
        }
    }
}
