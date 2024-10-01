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
            GeometryReader { geometry in
                ScrollView { // Use ScrollView for better adaptability on smaller screens
                    VStack(spacing: geometry.size.height * 0.05) { // Dynamic spacing based on screen height
                        
                        Text("Select Topic")
                            .foregroundColor(.black)
                            .font(.title3)
                            .bold()
                            .padding(.top, geometry.size.height * 0.02) // Dynamic padding
                            .minimumScaleFactor(0.5) // Allows text to scale down if needed
                            .lineLimit(1)
                        
                        // Navigation Links with dynamic button sizes
                        NavigationLink(destination: GrapeListView()) {
                            buttonContent(title: "Grapes", systemImage: "leaf.arrow.circlepath", geometry: geometry)
                        }
                        
                        NavigationLink(destination: WineGlossaryListView()) {
                            buttonContent(title: "Glossary", systemImage: "pencil.and.list.clipboard", geometry: geometry)
                        }
                        
                        NavigationLink(destination: FoodWinePairingsListView()) {
                            buttonContent(title: "Pairings", systemImage: "fork.knife", geometry: geometry)
                        }
                        
                        NavigationLink(destination: RegionListView()) {
                            buttonContent(title: "Regions", systemImage: "map", geometry: geometry)
                        }
                        
                        NavigationLink(destination: WineFlawListView()) {
                            buttonContent(title: "Wine Flaws", systemImage: "exclamationmark.triangle", geometry: geometry)
                        }
                        
                    }
                    .padding(30)
                    .frame(width: geometry.size.width, height: geometry.size.height, alignment: .top)
                }
                
                .navigationTitle("Wine Library")
                .navigationBarTitleDisplayMode(.inline)
            }
        }
    }
    
    /// Calculates a dynamic font size based on the geometry
    private func dynamicFontSize(base: CGFloat, geometry: GeometryProxy) -> CGFloat {
        // Adjust the scaling factor as needed
        let scalingFactor = geometry.size.width / 375 // Assuming 375 is base width (e.g., iPhone 11)
        return base * scalingFactor
    }
    
    @ViewBuilder
    private func buttonContent(title: String, systemImage: String, geometry: GeometryProxy) -> some View {
        VStack(spacing: geometry.size.height * 0.01) { // Dynamic spacing
            Image(systemName: systemImage)
                            .resizable()
                            .scaledToFit()
                            .foregroundColor(.black)
                            .frame(width: geometry.size.width * 0.06, height: geometry.size.width * 0.06) // Dynamic icon size
                            .minimumScaleFactor(0.5) // Allows icon to scale down if needed
            Text(title)
                .font(.system(size: dynamicFontSize(base: 30, geometry: geometry)))
                .foregroundColor(.black)
                .minimumScaleFactor(0.5) // Allows text to scale down if needed
                .lineLimit(1)
        }
        .padding()
        .frame(maxWidth: .infinity, minHeight: geometry.size.height * 0.1) // Dynamic height
        .background(Color("LightLatte")) // Ensure you have this color in your Assets
        .cornerRadius(10)
        .shadow(radius: 5)
        .overlay(
            RoundedRectangle(cornerRadius: 10)
                .stroke(Color("LightMaroon"), lineWidth: 2.2)
        )
    }
}

struct ReferenceMainView_Previews: PreviewProvider {
    static var previews: some View {
        ReferenceMainView()
            .previewDevice("iPhone 14 Pro") // Test on different devices
    }
}
