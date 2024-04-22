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

    var body: some View {
        if let unwrappedText = text {
            Text(unwrappedText)
                .font(.title)
                .padding()
                .foregroundColor(.primary)
                .frame(width: 300, height: 400)
                .background(Color.white)
                .cornerRadius(10)
                .shadow(radius: 5)
        } else {
            Text("No text")
                .font(.title)
                .padding()
                .foregroundColor(.primary)
                .frame(width: 300, height: 400)
                .background(Color.white)
                .cornerRadius(10)
                .shadow(radius: 5)
        }
    }
}

