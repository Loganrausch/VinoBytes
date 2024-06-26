//
//  ContentView.swift
//  VinoDecks
//
//  Created by Logan Rausch on 3/1/24.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        NavigationView {
            CustomTabBarView()
                .edgesIgnoringSafeArea(.top)  // Extend content into the safe area
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
