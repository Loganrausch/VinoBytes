//
//  FlashcardContent.swift
//  VinoDecks
//
//  Created by Logan Rausch on 3/11/24.
//

import Foundation
import SwiftUI

struct FlashcardContent: View {
    var text: String?
    var region: String? // Add this line to pass the region information

    var body: some View {
        VStack(spacing: 10) { // Use a VStack with some spacing
            if let unwrappedRegion = region { // Check if the region is available
                Text(unwrappedRegion)
                    .font(.headline) // Smaller font size for region
                    .foregroundColor(.gray) // Gray color to distinguish from the main text
                    .padding(.bottom, 5) // Space between region and text
            }
            if let unwrappedText = text {
                Text(unwrappedText)
                    .font(.title)
                    .padding()
                    .foregroundColor(.primary)
                    .background(Color.clear)
                    .cornerRadius(12)
                    .shadow(radius: 5)
            } else {
                Text("No text")
                    .font(.title)
                    .padding()
                    .foregroundColor(.primary)
                   
                    .background(Color.clear)
                    .cornerRadius(12)
                    .shadow(radius: 5)
            }
        }
    }
}
