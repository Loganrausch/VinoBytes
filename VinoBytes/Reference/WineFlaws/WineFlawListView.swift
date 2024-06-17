//
//  WineFlawListView.swift
//  VinoBytes
//
//  Created by Logan Rausch on 6/14/24.
//

import Foundation

import SwiftUI

struct WineFlawListView: View {
    var body: some View {
        List(wineFlawData) { flaw in
            NavigationLink(destination: WineFlawDetailView(wineFlaw: flaw)) {
                Text(flaw.name)
            }
        }
        .navigationTitle("Wine Flaws")
    }
}

struct WineFlawListView_Previews: PreviewProvider {
    static var previews: some View {
        WineFlawListView()
    }
}
