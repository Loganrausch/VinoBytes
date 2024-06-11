//
//  WineLawListView.swift
//  VinoBytes
//
//  Created by Logan Rausch on 6/3/24.
//

import Foundation

import SwiftUI

struct WineLawListView: View {
    var body: some View {
        List(WineLawData.laws.sorted(by: { $0.country < $1.country }), id: \.country) { law in
            NavigationLink(destination: WineLawDetailView(wineLaw: law)) {
                Text(law.country)
            }
        }
        .navigationTitle("Wine Laws by Country")
    }
}

struct WineLawListView_Previews: PreviewProvider {
    static var previews: some View {
        WineLawListView()
    }
}
