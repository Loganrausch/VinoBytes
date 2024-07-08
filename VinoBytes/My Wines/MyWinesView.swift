//
//  MyWinesView.swift
//  VinoDecks
//
//  Created by Logan Rausch on 3/2/24.
//
import SwiftUI
import CoreData

struct MyWinesView: View {
    @Environment(\.managedObjectContext) private var context
    @State private var searchText: String = ""
    @State private var isAddingWine = false  // State to trigger navigation to the WineFormView
    var isRootView: Bool

    @FetchRequest(
        entity: WineEntity.entity(),
        sortDescriptors: [
            NSSortDescriptor(keyPath: \WineEntity.region, ascending: true),
            NSSortDescriptor(keyPath: \WineEntity.producer, ascending: true)
        ]
    ) var winesFetched: FetchedResults<WineEntity>

    var body: some View {
        Group {
            if isRootView {
                NavigationView {
                    winesList
                }
            } else {
                winesList
            }
        }
    }

    private var winesList: some View {
        VStack {
            TextField("Search wines...", text: $searchText)
                .padding(10)
                .padding(.horizontal)
                .background(Color.white)
                .cornerRadius(10)
                .padding(.top)
                .padding(.horizontal)
                .accentColor(.black)
                .shadow(radius: 4)

            List {
                ForEach(filteredWinesGrouped, id: \.0) { region, wines in
                    Section(header: Text(region).textCase(nil).padding(.leading, -7)) {
                        ForEach(wines, id: \.self) { wine in
                            NavigationLink(destination: WineDetailView(wineEntity: wine)) {
                                Text("\(wine.vintage ?? "Unknown Vintage") \(wine.producer ?? "Unknown Producer") \(wine.wineName ?? "Unnamed Wine")")
                            }
                        }
                        .onDelete { offsets in
                            deleteWines(at: offsets, in: wines)
                        }
                    }
                }
            }
            .listStyle(PlainListStyle())
            .navigationTitle("My Wines")
            .navigationBarTitleDisplayMode(.inline)
            .toolbar {
                ToolbarItem(placement: .navigationBarTrailing) {
                    Button("Add Wine") {
                        isAddingWine = true
                    }
                }
            }
            
            NavigationLink(destination: WineFormView(wineEntity: nil), isActive: $isAddingWine) {
                EmptyView()
            }
        }
    }

    private func deleteWines(at offsets: IndexSet, in wines: [WineEntity]) {
        offsets.map { wines[$0] }.forEach(context.delete)
        try? context.save()
    }

    var filteredWinesGrouped: [(String, [WineEntity])] {
        let filteredWines: [WineEntity] = searchText.isEmpty ? Array(winesFetched) : winesFetched.filter { wine in
            wine.producer?.lowercased().contains(searchText.lowercased()) ?? false ||
            wine.wineName?.lowercased().contains(searchText.lowercased()) ?? false ||
            wine.region?.lowercased().contains(searchText.lowercased()) ?? false ||
            wine.grape?.lowercased().contains(searchText.lowercased()) ?? false
        }
        return Dictionary(grouping: filteredWines, by: { $0.region ?? "Unknown" })
            .map { ($0.key, $0.value) }
            .sorted { $0.0 < $1.0 }
    }
}

struct MyWinesView_Previews: PreviewProvider {
    static var previews: some View {
        MyWinesView(isRootView: true).environment(\.managedObjectContext, PersistenceController.preview.container.viewContext)
    }
}
