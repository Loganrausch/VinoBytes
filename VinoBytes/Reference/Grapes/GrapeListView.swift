//
//  GrapeListView.swift
//  VinoBytes
//
//  Created by Logan Rausch on 6/2/24.
//

import SwiftUI

struct GrapeListView: View {
    // Fetch and sort the red and white grapes alphabetically by name
    let redGrapes = GrapeData.redGrapes.sorted { $0.name < $1.name }
    let whiteGrapes = GrapeData.whiteGrapes.sorted { $0.name < $1.name }

    var body: some View {
            ZStack {
                Color("Latte").edgesIgnoringSafeArea(.all) // Ensure the background covers the entire screen
                
                List {
                    Section(header: Text("Red Grapes")) {
                        ForEach(redGrapes) { grape in
                            NavigationLink(destination: GrapeDetailView(grape: grape)) {
                                Text(grape.name)
                                    .padding(.vertical, 5)
                                    .background(Color("Latte"))
                            }
                            .listRowBackground(Color("Latte")) // Ensure each row respects the background color
                        }
                    }
                    .headerProminence(.increased)

                    Section(header: Text("White Grapes")) {
                        ForEach(whiteGrapes) { grape in
                            NavigationLink(destination: GrapeDetailView(grape: grape)) {
                                Text(grape.name)
                                    .padding(.vertical, 5)
                                    .background(Color("Latte"))
                            }
                            .listRowBackground(Color("Latte")) // Ensure each row respects the background color
                        }
                    }
                    .headerProminence(.increased)
                }
                .background(Color("Latte")) // Background for the list
                .listStyle(InsetGroupedListStyle()) // Apply a list style for better appearance
            }
            .navigationTitle("Grapes")
        
    }
}

struct GrapeListView_Previews: PreviewProvider {
    static var previews: some View {
        GrapeListView()
    }
}
