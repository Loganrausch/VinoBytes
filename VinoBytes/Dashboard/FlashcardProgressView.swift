//
//  FlashcardProgressView.swift
//  VinoBytes
//
//  Created by Logan Rausch on 9/23/24.
//

import Foundation
import SwiftUI

import Foundation
import SwiftUI

// FlashcardProgressView for the sheet
struct FlashcardProgressView: View {
    var flashcardProgress: [String: Int]

    var body: some View {
        VStack {
            Text("Flashcard Progress")
                .font(.title)
                .padding()

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
            }
            Spacer()
        }
        .padding()
    }
}

// Custom ProgressViewStyle
struct CustomProgressViewStyle: ProgressViewStyle {
    func makeBody(configuration: Configuration) -> some View {
        ProgressView(configuration)
            .accentColor(Color("LightMaroon"))
    }
}
