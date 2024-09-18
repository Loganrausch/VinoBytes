//
//  ReferenceMainView.swift
//  VinoBytes
//
//  Created by Logan Rausch on 6/2/24.
//

import SwiftUI

struct ReferenceMainView: View {
    var body: some View {
        NavigationView {
            ZStack {
                VStack(spacing: 45) { // Adjust spacing as needed
                    NavigationLink(destination: GrapeListView()) {
                        buttonContent(title: "Grapes", systemImage: "leaf.arrow.circlepath")
                    }
                    
                    NavigationLink(destination: WineGlossaryListView()) {
                        buttonContent(title: "Glossary", systemImage: "pencil.and.list.clipboard")
                    }
                    
                    NavigationLink(destination: FoodWinePairingsListView()) {
                        buttonContent(title: "Pairings", systemImage: "fork.knife")
                    }
                    
                    NavigationLink(destination: RegionListView()) {
                        buttonContent(title: "Regions", systemImage: "map")
                    }
                    
                    NavigationLink(destination: WineFlawListView()) {
                        buttonContent(title: "Wine Flaws", systemImage: "exclamationmark.triangle")
                    }
                }
                .padding(.horizontal, 40)
                .padding(.top, -20)
                .navigationTitle("Wine Library")
                .navigationBarTitleDisplayMode(.inline)
            }
        }
    }
    
    @ViewBuilder
    private func buttonContent(title: String, systemImage: String) -> some View {
        VStack(spacing: 8) { // Add custom spacing here
            Image(systemName: systemImage)
                .foregroundColor(.black)
                .font(.title2) // Adjust icon size
            Text(title)
                .font(.headline)
                .foregroundColor(.black)
        }
        .frame(width: 340, height: 80) // Adjust frame size to make it rectangular
        .background(Color.white)
        .cornerRadius(10) // Add corner radius to make the rectangle corners rounded
        .shadow(radius: 10) // Apply shadow
        .overlay(
            RoundedRectangle(cornerRadius: 10).stroke(Color("LightMaroon"), lineWidth: 2.2)
        )
    }
}

struct ReferenceMainView_Previews: PreviewProvider {
    static var previews: some View {
        ReferenceMainView()
    }
}
