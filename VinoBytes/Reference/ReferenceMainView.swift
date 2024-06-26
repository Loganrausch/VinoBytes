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
                Color("Latte")
                    .edgesIgnoringSafeArea(.all) // Extend background to the edges
                
                VStack(spacing: 50) {
                    HStack(spacing: 40) {
                        NavigationLink(destination: GrapeListView()) {
                            buttonContent(title: "Grapes", systemImage: "leaf.arrow.circlepath")
                        }

                        NavigationLink(destination: WineGlossaryListView()) {
                            buttonContent(title: "Glossary", systemImage: "books.vertical")
                        }
                    }

                    HStack(spacing: 40) {
                        NavigationLink(destination: FoodWinePairingsListView()) {
                            buttonContent(title: "Pairings", systemImage: "fork.knife")
                        }

                        NavigationLink(destination: RegionListView()) {
                            buttonContent(title: "Regions", systemImage: "map")
                        }
                    }

                    HStack(spacing: 40) {
                        NavigationLink(destination: WineFlawListView()) {
                            buttonContent(title: "Wine Flaws", systemImage: "exclamationmark.triangle")
                        }
                        NavigationLink(destination: WineLawListView()) {
                            buttonContent(title: "Wine Law", systemImage: "scalemass")
                        }
                    }
                }
                .padding(.horizontal, 40)
                .padding(.top, -20)
                .navigationTitle("Wine Reference")
                .navigationBarTitleDisplayMode(.inline)
            }
        }
    }

    @ViewBuilder
    private func buttonContent(title: String, systemImage: String) -> some View {
        VStack(spacing: 8) { // Add custom spacing here
            Text(title)
                .font(.headline)
                .foregroundColor(.black)
            Image(systemName: systemImage)
                .foregroundColor(.black)
        }
        .frame(width: 150, height: 150)
        .background(Color.latte)
        .clipShape(Circle())
        .shadow(radius: 10)
        .overlay(
            Circle().stroke(Color("Maroon"), lineWidth: 2)
        )
    }
}

struct ReferenceMainView_Previews: PreviewProvider {
    static var previews: some View {
        ReferenceMainView()
    }
}
