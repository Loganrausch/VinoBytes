//
//  GrapeListView.swift
//  VinoBytes
//
//  Created by Logan Rausch on 6/2/24.
//
//  NOTE: MVVM Decision
//  ───────────────────
//  This view only performs trivial UI‑oriented work (static sort, simple “locked” row rule,
//  paywall sheet presentation). No heavy business or persistence logic is involved, so a
//  separate ViewModel would add noise without value. If we later introduce search, filtering,
//  or remote data loading, we can promote those rules to a dedicated <FileName>ViewModel.
//

import SwiftUI
import RevenueCat
import RevenueCatUI

struct GrapeListView: View {
    @EnvironmentObject var authViewModel: AuthViewModel
    @State private var isPaywallPresented = false

    // Fetch and sort the red and white grapes alphabetically by name
    let redGrapes = GrapeData.redGrapes.sorted { $0.name < $1.name }
    let whiteGrapes = GrapeData.whiteGrapes.sorted { $0.name < $1.name }

    var body: some View {
        List {
            Section(header: Text("Red Grapes")) {
                ForEach(redGrapes) { grape in
                    grapeRow(grape: grape)
                }
            }
            .headerProminence(.increased)

            Section(header: Text("White Grapes")) {
                ForEach(whiteGrapes) { grape in
                    grapeRow(grape: grape)
                }
            }
            .headerProminence(.increased)
        }
        .listStyle(InsetGroupedListStyle())
        .navigationTitle("Grapes")
        .sheet(isPresented: $isPaywallPresented) {
            PaywallView()
                .environmentObject(authViewModel)
        }
    }

    @ViewBuilder
    private func grapeRow(grape: Grape) -> some View {
        let isLocked = !authViewModel.hasActiveSubscription &&
                       !grape.name.lowercased().hasPrefix("a") &&
                       !grape.name.lowercased().hasPrefix("b")

        if isLocked {
            Button(action: {
                isPaywallPresented = true
            }) {
                HStack {
                    Text(grape.name)
                        .foregroundColor(.gray)
                    Spacer()
                    Image(systemName: "lock.fill")
                        .foregroundColor(.lightMaroon)
                }
                .padding(.vertical, 5)
                .contentShape(Rectangle())
            }
            .buttonStyle(PlainButtonStyle())
          
        } else {
            NavigationLink(destination: GrapeDetailView(grape: grape)) {
                HStack {
                    Text(grape.name)
                        .foregroundColor(.primary)
                    Spacer()
                }
                .padding(.vertical, 5)
            }
        }
    }
}

struct GrapeListView_Previews: PreviewProvider {
    static var previews: some View {
        NavigationView {
            GrapeListView()
                .environmentObject(AuthViewModel())
        }
    }
}
