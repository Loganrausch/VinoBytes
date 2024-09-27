//
//  StudyView.swift
//  VinoDecks
//
//  Created by Logan Rausch on 3/8/24.
//

import Foundation
import SwiftUI

struct StudyView: View {
    let regions = ["Argentina", "Australia", "Austria", "Chile", "France", "Germany", "Greece", "Hungary", "Italy", "New Zealand", "Portugal", "South Africa", "Spain", "USA"]
    @State private var selectedRegions = Set<String>()
    @State private var showingAlert = false
    @State private var isActiveLink = false // Manages navigation link activation

    var body: some View {
        NavigationView {
            ScrollView {
                VStack(spacing: 20) {
                    Spacer(minLength: 5)
                    Text("Select Regions").font(.headline)
                    
                    LazyVGrid(columns: [GridItem(.fixed(170)), GridItem(.fixed(170))]) {
                        ForEach(regions, id: \.self) { region in
                            RegionView(region: region, isSelected: selectedRegions.contains(region)) {
                                if selectedRegions.contains(region) {
                                    selectedRegions.remove(region)
                                } else {
                                    selectedRegions.insert(region)
                                }
                            }
                            .frame(width: 150, height: 50)
                            .padding(9)
                        }
                    }

                    Button(action: {
                        if selectedRegions.isEmpty {
                            showingAlert = true
                        } else {
                            isActiveLink = true
                        }
                    }) {
                        Text("Start Learning")
                                .foregroundColor(.maroon)
                                .bold()
                                .frame(width: 100, height: 100) // Adjust the width and height to be equal for a circle
                                .background(Color.lightLatte)
                                .clipShape(Circle()) // This makes the background a circle
                                .overlay(
                                Circle() // Overlay a circle border
                                    .stroke(Color.black, lineWidth: 2)
                                                   )
                                .shadow(radius: 5)
                                           }
                    .alert(isPresented: $showingAlert) {
                        Alert(title: Text("No Regions Selected"), message: Text("Please select a wine region to start learning."), dismissButton: .default(Text("OK")))
                    }
                    .background(NavigationLink(destination: FlashcardView(selectedRegions: Array(selectedRegions)), isActive: $isActiveLink) {
                        EmptyView()
                    })
                }
            }
            .navigationBarTitle("Flashcards", displayMode: .inline)
            .navigationBarItems(trailing: Button(action: toggleSelection) {
                            Text(selectedRegions.count == regions.count ? "Deselect All" : "Select All")
                                .font(.headline)
                        })
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
    var action: () -> Void
    
    var body: some View {
        Button(action: action) {
            Text(region)
                .foregroundColor(isSelected ? .latte : .black)
                .bold()
                .frame(maxWidth: .infinity, maxHeight: .infinity)
                .padding()
                .background(
                    isSelected ?
                    Color("LightMaroon").opacity(1) :  // Assuming 100% opacity for selected state
                    Color.lightLatte.opacity(1)         // Assuming 100% opacity for unselected state
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
