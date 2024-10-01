//
//  FlashcardProgressView.swift
//  VinoBytes
//
//  Created by Logan Rausch on 9/23/24.
//

import Foundation
import SwiftUI


// FlashcardProgressView for the sheet
struct FlashcardProgressView: View {
    var flashcardProgress: [String: Double]
    
    // Calculate the total progress as the average of all regions
    var totalProgressPercentage: Double {
        let total = flashcardProgress.values.reduce(0, +)
        let count = flashcardProgress.values.count
        return count > 0 ? total / Double(count) : 0
    }
    
    var totalProgress: Double {
        totalProgressPercentage / 100.0
    }

    var body: some View {
        GeometryReader { geometry in
            VStack {
                Text("Flashcard Progress")
                    .font(.title)
                    .padding(.top)
                    .padding(.bottom, 1)
                    .foregroundColor(.black)
                    .frame(maxWidth: .infinity)
                    .minimumScaleFactor(0.8)  // Allows scaling for smaller screens
                
                // Adjust the size of CircularProgressView based on available width
                CircularProgressView(progress: totalProgress)
                    .frame(width: geometry.size.width * 0.4, height: geometry.size.width * 0.4)
                    .padding(.bottom, 5)
                
                    
                
                // Separator line
                Rectangle()
                    .fill(Color.maroon.opacity(0.1))
                    .frame(height: 1)
                    .padding(.horizontal)
                
                // List of regions and progress
                ScrollView(showsIndicators: false) {
                    ForEach(flashcardProgress.keys.sorted(), id: \.self) { region in
                        let progress = flashcardProgress[region, default: 0.0]
                        VStack(spacing: 3) {
                            HStack {
                                Text(region)
                                    .font(.body)
                                    .minimumScaleFactor(0.8)
                                    .lineLimit(1)
                                
                                Spacer()
                                
                                ProgressView(value: Float(progress), total: 100)
                                    .progressViewStyle(CustomProgressViewStyle())
                                    .frame(width: geometry.size.width * 0.3)
                                
                                Text(String(format: "%.1f%%", progress))
                                                                    .font(.body)
                                                                    .minimumScaleFactor(0.5)
                                                            }
                                                            .padding(.vertical, 2)
                            
                            
                            // Separator line
                            Rectangle()
                                .fill(Color.maroon.opacity(0.1))
                                .frame(height: 1)
                                .padding(.horizontal, 0.5)
                        }
                    }
                }
                .padding(.horizontal)
                
                Spacer()
            }
            .padding(.horizontal, geometry.size.width * 0.05)
        }
    }
}

// Custom ProgressViewStyle
struct CustomProgressViewStyle: ProgressViewStyle {
    func makeBody(configuration: Configuration) -> some View {
        ProgressView(configuration)
            .accentColor(Color("LightMaroon"))
    }
}

struct FlashcardProgressView_Previews: PreviewProvider {
    static var previews: some View {
        FlashcardProgressView(flashcardProgress: ["Bordeaux": 70.0, "Tuscany": 45.0, "Napa Valley": 85.0])
            .previewDevice("iPhone 12")
    }
}
