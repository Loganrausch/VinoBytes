//
//  RecentWineCard.swift
//  VinoBytes
//
//  Created by Logan Rausch on 2/22/25.
//

import SwiftUI
import Foundation

struct RecentWineCard: View {
  @ObservedObject var wine: WineEntity
  
    
    var body: some View {
        NavigationLink(destination: WineDetailView(wineEntity: wine)) {
            VStack(spacing: 8) {
                if let imageData = wine.imageData, let uiImage = UIImage(data: imageData) {
                    Image(uiImage: uiImage)
                        .resizable()
                        .scaledToFill()
                        .frame(width: 90, height: 90)
                        .clipShape(RoundedRectangle(cornerRadius: 10))
                } else {
                    Rectangle()
                        .fill(Color.gray.opacity(0.3))
                        .frame(width: 90, height: 90)
                        .clipShape(RoundedRectangle(cornerRadius: 10))
                        .overlay(
                            Image(systemName: "wineglass")
                                .foregroundColor(.burgundy)
                                .font(.title)
                        )
                }
                
                // Only display the wine name.
                Text(wine.wineName ?? "Unnamed Wine")
                    .font(.subheadline)
                    .fontWeight(.bold)
                    .multilineTextAlignment(.center)
                    .foregroundColor(.primary)
                    .lineLimit(2)
                    .frame(height: 40) // Fixed height for the text block
                    .frame(maxWidth: .infinity)
            }
            .padding(.horizontal, 8)
            .frame(width: 120) // Fixed width to keep cards uniform
        }
        .buttonStyle(PlainButtonStyle())
    }
}


