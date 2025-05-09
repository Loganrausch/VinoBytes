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
                .font(.title)
                .fontWeight(.bold)
            
            Text("Description")
                .font(.headline)
                .foregroundStyle(Color("LightMaroon"))
            
            Text(wineFlaw.description)
                .font(.body)
                .padding()
                .background(Color.secondary.opacity(0.1))
                .cornerRadius(10)
            
            Text("Additional Info")
                .font(.headline)
                .foregroundStyle(Color("LightMaroon"))
            
            Text(wineFlaw.additionalInfo)
                .font(.body)
                .padding()
                .background(Color.secondary.opacity(0.1))
                .cornerRadius(10)
                
            
            Spacer()
        }
        .padding()
        .navigationTitle("Wine Flaws")
        .navigationBarTitleDisplayMode(.inline)
    }
}

struct WineFlawDetailView_Previews: PreviewProvider {
    static var previews: some View {
        WineFlawDetailView(wineFlaw: wineFlawData[0])
    }
}
