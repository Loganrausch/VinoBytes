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
    var flashcardProgress: [String: Int]
    
    // Calculate the total progress as the average of all regions
    var totalProgressPercentage: Double {
        let total = flashcardProgress.values.reduce(0, +)
        let count = flashcardProgress.values.count
        return count > 0 ? Double(total) / Double(count) : 0
    }
    
    var totalProgress: Double {
        totalProgressPercentage / 100.0
    }

    var body: some View {
        VStack {
            Text("Flashcard Progress")
                .font(.title)
                .padding()
                .foregroundColor(.black)
            
            // Add the CircularProgressView here
            CircularProgressView(progress: totalProgress)
                .padding()
            
            // **Add a thin rectangle as a line separator here**
                       Rectangle()
                           .fill(Color.maroon.opacity(0.1))  // Adjust the color and opacity as needed
                           .frame(height: 1)               // Set the thickness of the line
                           .padding(.horizontal, 0.5)       // Optional: Adjust horizontal padding
            
           
            ForEach(flashcardProgress.keys.sorted(), id: \.self) { region in
                let progress = flashcardProgress[region, default: 0]
                HStack {
                    Text(region)
                    Spacer()
                    ProgressView(value: Float(progress), total: 100)
                        .progressViewStyle(CustomProgressViewStyle())
                        .frame(width: 100)
                    
                    Text("\(progress)%")
                }
                .padding(.vertical, 2)
                // **Add a thin rectangle as a line separator here**
                           Rectangle()
                               .fill(Color.maroon.opacity(0.1))  // Adjust the color and opacity as needed
                               .frame(height: 1)               // Set the thickness of the line
                               .padding(.horizontal, 0.5)       // Optional: Adjust horizontal padding
                
            }
            Spacer()
        }
        .padding(.horizontal, 25)
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
        FlashcardProgressView(flashcardProgress: ["Bordeaux": 70, "Tuscany": 45, "Napa Valley": 85])
    }
}
