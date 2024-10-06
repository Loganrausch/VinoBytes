//
//  StudyView.swift
//  VinoDecks
//
//  Created by Logan Rausch on 3/8/24.
//

import Foundation
import SwiftUI

struct StudyView: View {
    @ObservedObject private var flashcardManager = FlashcardManager.shared
    @State private var selectedRegions = Set<String>()
    @State private var showingAlert = false
    @State private var isActiveLink = false
    
    let regions = ["Argentina", "Australia", "Austria", "Chile", "France", "Germany", "Greece", "Hungary", "Italy", "New Zealand", "Portugal", "South Africa", "Spain", "USA"]

    var body: some View {
        NavigationStack {
            GeometryReader { geometry in
                let screenWidth = geometry.size.width
                let screenHeight = geometry.size.height

                // Adjust spacing and padding based on screen height
                let horizontalPadding = screenWidth * 0.10    // 5% of screen width
                let verticalSpacing = screenHeight * 0.018     // 2% of screen height
                let itemHeight = (screenHeight * 0.6) / 7     // Distribute 60% of screen height among 7 rows
                let columnSpacing = screenWidth * 0.05
                
                let columns = [
                    GridItem(.flexible(), spacing: columnSpacing),
                    GridItem(.flexible())
                ]

                
                    VStack(spacing: verticalSpacing) {
                        
                        LazyVGrid(columns: columns, spacing: verticalSpacing) {
                            ForEach(regions, id: \.self) { region in
                                RegionView(region: region,
                                           isSelected: selectedRegions.contains(region),
                                           fontSize: screenHeight * 0.025, // Adjust font size
                                           padding: screenHeight * 0.025,   // Adjust padding
                                           action: {
                                    if selectedRegions.contains(region) {
                                        selectedRegions.remove(region)
                                    } else {
                                        selectedRegions.insert(region)
                                    }
                                })
                                .frame(height: itemHeight)
                            }
                        }
                        .padding(.horizontal, horizontalPadding)
                        

                        Spacer(minLength: verticalSpacing)

                        Button(action: {
                            if selectedRegions.isEmpty {
                                showingAlert = true
                            } else {
                                isActiveLink = true
                            }
                        }) {
                            Text("Start Learning")
                                .foregroundColor(.black)
                                .bold()
                                .frame(width: screenWidth * 0.25, height: screenWidth * 0.25) // Adjust size based on screen width
                                .background(Color.lightLatte)
                                .clipShape(Circle())
                                .overlay(
                                    Circle()
                                        .stroke(Color.lightMaroon, lineWidth: 2)
                                )
                                .shadow(radius: 5)
                        }
                        .padding(.bottom, 70)
                        .padding(.top, 1)
                        .alert(isPresented: $showingAlert) {
                            Alert(title: Text("No Regions Selected"), message: Text("Please select a wine region to start learning."), dismissButton: .default(Text("OK")))
                        }
                        .navigationDestination(isPresented: $isActiveLink) {
                            // Pass the filtered flashcards to FlashcardView
                            FlashcardView(flashcards: flashcardManager.getFlashcards(for: selectedRegions))
                                            }
                                        }
                    .padding(.top, 65)
                    .frame(minHeight: geometry.size.height)
                
                .navigationBarTitle("Select Regions", displayMode: .inline)
                .navigationBarItems(trailing: Button(action: toggleSelection) {
                    Text(selectedRegions.count == regions.count ? "Deselect All" : "Select All")
                        .font(.headline)
                })
            }
        }
    }

    private func toggleSelection() {
        if selectedRegions.count == regions.count {
            selectedRegions.removeAll()
        } else {
            selectedRegions = Set(regions)
        }
    }
}

struct RegionView: View {
    var region: String
    var isSelected: Bool
    var fontSize: CGFloat
    var padding: CGFloat
    var action: () -> Void

    var body: some View {
        Button(action: action) {
            Text(region)
                .font(.system(size: fontSize))
                .foregroundColor(isSelected ? .latte : .black)
                .bold()
                .frame(maxWidth: .infinity)
                .padding(padding)
                .background(
                    isSelected ?
                    Color("LightMaroon").opacity(1) :
                    Color.lightLatte.opacity(1)
                )
                .cornerRadius(5)
                .shadow(color: .gray, radius: 4)
                .overlay(
                    RoundedRectangle(cornerRadius: 5)
                        .stroke(isSelected ? Color.latte : Color.lightMaroon, lineWidth: 2)
                )
        }
    }
}

struct StudyView_Previews: PreviewProvider {
    static var previews: some View {
        StudyView()
    }
}
