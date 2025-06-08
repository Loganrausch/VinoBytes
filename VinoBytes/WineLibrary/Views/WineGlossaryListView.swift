//
//  WineGlossaryListView.swift
//  VinoBytes
//
//  Created by Logan Rausch on 6/3/24.
//
//  NOTE: MVVM Decision
//  ───────────────────
//  This view only performs trivial UI‑oriented work (static sort, simple “locked” row rule,
//  paywall sheet presentation). No heavy business or persistence logic is involved, so a
//  separate ViewModel would add noise without value. If we later introduce search, filtering,
//  or remote data loading, we can promote those rules to a dedicated WineGlossaryViewModel.
//

import SwiftUI

struct WineGlossaryListView: View {
    // Retrieve the terms and sort them alphabetically by the term property
    var sortedGlossary: [GlossaryEntry] {
        WineGlossaryData.terms.sorted { $0.term < $1.term }
    }

    var body: some View {
        List(sortedGlossary, id: \.term) { entry in
            NavigationLink(destination: WineGlossaryDetailView(entry: entry)) {
                Text(entry.term)
            }
        }
        .navigationTitle("Glossary")
    }
}

struct WineGlossaryListView_Previews: PreviewProvider {
    static var previews: some View {
        NavigationView {
            WineGlossaryListView()
        }
    }
}
