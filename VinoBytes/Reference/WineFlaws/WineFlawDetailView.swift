//
//  WineFlawDetailView.swift
//  VinoBytes
//
//  Created by Logan Rausch on 6/14/24.
//

import Foundation

import SwiftUI

struct WineFlawDetailView: View {
    var wineFlaw: WineFlaw

    var body: some View {
        VStack(alignment: .leading, spacing: 20) {
            Text(wineFlaw.name)
                .font(.largeTitle)
                .fontWeight(.bold)
            
            Text(wineFlaw.description)
                .font(.body)
            
            Spacer()
        }
        .padding()
        .navigationTitle("Wine Flaw Detail")
    }
}

struct WineFlawDetailView_Previews: PreviewProvider {
    static var previews: some View {
        WineFlawDetailView(wineFlaw: wineFlawData[0])
    }
}
