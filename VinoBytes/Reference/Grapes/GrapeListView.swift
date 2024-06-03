//
//  GrapeListView.swift
//  VinoBytes
//
//  Created by Logan Rausch on 6/2/24.
//

import SwiftUI

struct GrapeListView: View {
    let redGrapes = GrapeData.redGrapes
    let whiteGrapes = GrapeData.whiteGrapes

    var body: some View {
        List {
            Section(header: Text("Red Grapes")) {
                ForEach(redGrapes) { grape in
                    NavigationLink(destination: GrapeDetailView(grape: grape)) {
                        Text(grape.name)
                            .padding(.vertical, 5)
                    }
                }
            }
            
            Section(header: Text("White Grapes")) {
                ForEach(whiteGrapes) { grape in
                    NavigationLink(destination: GrapeDetailView(grape: grape)) {
                        Text(grape.name)
                            .padding(.vertical, 5)
                    }
                }
            }
        }
        .navigationTitle("Grapes")
    }
}

struct GrapeListView_Previews: PreviewProvider {
    static var previews: some View {
        GrapeListView()
    }
}
