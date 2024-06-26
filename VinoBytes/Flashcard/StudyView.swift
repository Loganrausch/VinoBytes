//
//  StudyView.swift
//  VinoDecks
//
//  Created by Logan Rausch on 3/8/24.
//

import Foundation
import SwiftUI

struct StudyView: View {
    let regions = ["Argentina", "Australia", "Austria", "Chile", "France", "Germany", "Italy", "New Zealand", "Portugal", "South Africa", "Spain", "USA"]
    @State private var selectedRegions = Set<String>()
    
    var body: some View {
        NavigationView {
            ScrollView {
                VStack(spacing: 10) { // Adjust the spacing as needed
                    Text("Select Regions").font(.headline)
                    
                    LazyVGrid(columns: [GridItem(.fixed(160)), GridItem(.fixed(160))]) {
                        ForEach(regions, id: \.self) { region in
                            RegionView(region: region, isSelected: selectedRegions.contains(region)) {
                                if selectedRegions.contains(region) {
                                    selectedRegions.remove(region)
                                } else {
                                    selectedRegions.insert(region)
                                }
                            }
                            .frame(width: 150, height: 50)
                            .padding(5)
                        }
                    }

                    
                    
                    
                    Button("Select All Regions") {
                        if selectedRegions.count == regions.count {
                            selectedRegions.removeAll()
                        } else {
                            selectedRegions = Set(regions)
                        }
                    }
                    .font(.system(size: 14))
                    .foregroundColor(selectedRegions.count == regions.count ? .white : .black)
                    .frame(maxWidth: 120)
                    .padding()
                    .background(selectedRegions.count == regions.count ? Color(red: 128/255, green: 0, blue: 0) : Color.white)
                    .cornerRadius(8)
                    .shadow(color: .gray, radius: 2, x: 0, y: 2)
                    .padding(.top, 10)
                    
                    NavigationLink(destination: FlashcardView(selectedRegions: Array(selectedRegions))) {
                        Text("Start Studying")
                            .foregroundColor(.white)
                            .frame(maxWidth: .infinity, alignment: .center)
                            .padding()
                            .background(Color(red: 128/255, green: 0, blue: 0))
                            .cornerRadius(8)
                            .padding(.top, 10) // Adjust the padding as needed
                    }
                }
                .padding()
            }
            .navigationTitle("Flashcards")
            .navigationBarTitleDisplayMode(.inline)
        }
    }
}

struct RegionView: View {
    var region: String
    var isSelected: Bool
    var action: () -> Void

    var body: some View {
        Button(action: action) {
            Text(region)
                .font(.system(size: 14))
                .foregroundColor(isSelected ? .white : .black)
                .frame(maxWidth: .infinity, maxHeight: .infinity)
                .padding()
        }
        .background(isSelected ? Color(red: 128/255, green: 0, blue: 0) : Color.white)
        .cornerRadius(5)
        .shadow(color: .gray, radius: 2, x: 0, y: 2)
    }
}

