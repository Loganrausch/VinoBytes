//
//  LegalDocumentView.swift
//  VinoBytes
//
//  Created by Logan Rausch on 6/18/24.
//

import Foundation

import SwiftUI

struct LegalDocumentView: View {
    let documentTitle: String
    let documentText: [String: String]

    var body: some View {
        ScrollView {
            VStack(alignment: .leading, spacing: 10) {
                ForEach(getSortedKeys(), id: \.self) { key in
                    if shouldDisplayKey(key) { // Filter out non-content keys
                        Text(key)
                            .fontWeight(.bold)
                            .padding(.top, 10)
                        Text(documentText[key] ?? "")
                            .padding(.bottom, 10)
                    }
                }
            }
            .padding()
            .navigationTitle(documentTitle)
        }
    }

    private func getSortedKeys() -> [String] {
        documentText.keys.sorted {
            let order1 = getOrder($0)
            let order2 = getOrder($1)
            return order1 < order2
        }
    }

    private func getOrder(_ key: String) -> Int {
        // Extract number from the key if it exists
        if let number = key.split(separator: ".").first, let order = Int(number) {
            return order
        }
        return Int.max // Default order for non-numbered keys
    }

    private func shouldDisplayKey(_ key: String) -> Bool {
        // Exclude the title key and any other non-content keys
        return key != "Terms and Conditions" && key != "Privacy Policy" && key != documentTitle
    }
}
