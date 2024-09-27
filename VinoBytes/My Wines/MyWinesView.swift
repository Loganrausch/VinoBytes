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
    @ObservedObject var refreshNotifier: RefreshNotifier

    @FetchRequest(
            entity: WineEntity.entity(),
            sortDescriptors: [
                NSSortDescriptor(keyPath: \WineEntity.region, ascending: true),
                NSSortDescriptor(keyPath: \WineEntity.producer, ascending: true)
            ],
            animation: .default)
        var winesFetched: FetchedResults<WineEntity>

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
        
        .onAppear {
                    // This will check if the data needs to be refreshed
                    if refreshNotifier.needsRefresh {
                        context.refreshAllObjects() // Refresh all objects in the context
                        refreshNotifier.needsRefresh = false
                    }
                }
    }

    private var winesList: some View {
        VStack {
            TextField("Search wines...", text: $searchText)
                .padding(10)
                .padding(.horizontal)
                .background(Color.lightLatte)
                .cornerRadius(10)
                .overlay(
                    RoundedRectangle(cornerRadius: 10)
                        .stroke(Color.lightMaroon.opacity(1), lineWidth: 1.5) // Customize color and width
                )
            
                .padding(.top)
                .padding(.horizontal)
                .accentColor(.lightMaroon)
                

            List {
                ForEach(filteredWinesGrouped, id: \.0) { region, wines in
                    Section(header: Text(region)
                        .textCase(nil)
                        .padding(.leading, -7)
                        .foregroundColor(.maroon) // Change the color as needed
                    
                    ) {
                        ForEach(wines, id: \.objectID) { wine in
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
                    Button(action: {
                                isAddingWine = true
                            }) {
                                Text("Add Wine")
                                    .font(.headline) // Customize with your font
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
            wine.grape?.lowercased().contains(searchText.lowercased()) ?? false ||
            wine.vintage?.lowercased().contains(searchText.lowercased()) ?? false
        }
        return Dictionary(grouping: filteredWines, by: { $0.region ?? "Unknown" })
            .map { ($0.key, $0.value) }
            .sorted { $0.0 < $1.0 }
    }
}

struct MyWinesView_Previews: PreviewProvider {
    static var previews: some View {
        let refreshNotifier = RefreshNotifier()
        return MyWinesView(isRootView: true, refreshNotifier: refreshNotifier)
            .environment(\.managedObjectContext, PersistenceController.preview.container.viewContext)
    }
}
