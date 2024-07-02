//
//  MyWinesView.swift
//  VinoDecks
//
//  Created by Logan Rausch on 3/2/24.
//
import SwiftUI

struct MyWinesView: View {
    @ObservedObject var wineData: WineData
    @State private var searchText: String = ""
    var isRootView: Bool = false  // Flag to determine if NavigationView should be included

    var filteredWinesGrouped: [(String, [Wine])] {
        if searchText.isEmpty {
            return sortedWines()
        } else {
            return sortedWines().compactMap { region, regionWines in
                let filteredWines = regionWines.filter { wine in
                    let searchLowercased = searchText.lowercased()
                    return wine.producer.lowercased().contains(searchLowercased) ||
                        wine.wineName.lowercased().contains(searchLowercased) ||
                        wine.region.lowercased().contains(searchLowercased) ||
                        wine.grape.lowercased().contains(searchLowercased) ||
                        wine.vintageFormatted.contains(searchText)
                }
                if !filteredWines.isEmpty {
                    return (region, filteredWines)
                }
                return nil
            }
        }
    }

    var body: some View {
        Group {
            if isRootView {
                NavigationView {
                    contentView
                        .navigationTitle("My Wines")
                        .navigationBarTitleDisplayMode(.inline)
                }
            } else {
                contentView
                    .navigationTitle("My Wines")
                    .navigationBarTitleDisplayMode(.inline)
            }
        }
    }

    private var contentView: some View {
        ZStack {
            Color("Latte").edgesIgnoringSafeArea(.all)
            VStack(spacing: 20) {
                Spacer(minLength: 10)
                searchField
                wineList
                addButton
            }
        }
    }

    private var searchField: some View {
        TextField("Search", text: $searchText)
            .padding(8)
            .background(Color(.systemGray6)) // Background color of the TextField
            .cornerRadius(8)
            .overlay(
                RoundedRectangle(cornerRadius: 8) // Match the corner radius with the background
                    .stroke(Color("Maroon"), lineWidth: 2) // Apply stroke with your custom color and define its width
            )
            .padding(.horizontal)
    }

    private var wineList: some View {
        List {
            ForEach(filteredWinesGrouped, id: \.0) { region, regionWines in
                Section(header: Text(region)) {
                    ForEach(regionWines, id: \.id) { wine in
                        if let index = wineData.wines.firstIndex(where: { $0.id == wine.id }) {
                            let wineBinding = $wineData.wines[index]
                            NavigationLink(destination: WineDetailView(wine: wineBinding, wineData: wineData)) {
                                Text("\(wineBinding.wrappedValue.vintageFormatted) \(wineBinding.wrappedValue.producer) \(wineBinding.wrappedValue.wineName)")
                                    .lineLimit(1)
                            }
                        }
                    }
                    .onDelete { indexSet in
                        indexSet.forEach { index in
                            let wineToDelete = regionWines[index]
                            if let globalIndex = wineData.wines.firstIndex(where: { $0.id == wineToDelete.id }) {
                                wineData.wines.remove(at: globalIndex)
                            }
                        }
                    }
                }
            }
            .listRowBackground(Color.clear)
        }
        .listStyle(PlainListStyle())
    }

    private var addButton: some View {
        NavigationLink(destination: WineFormView(addWine: { wine in
            wineData.wines.append(wine)
        })) {
            Text("Add a Wine")
                .padding()
                .foregroundColor(Color("Latte"))
                .background(Color("Maroon"))
                .shadow(radius: 10)
                .cornerRadius(8)
                
        }
        .padding()
       
    }

    private func sortedWines() -> [(String, [Wine])] {
        wineData.wines
            .sorted { $0.region < $1.region || ($0.region == $1.region && $0.producer < $1.producer) }
            .reduce(into: [String: [Wine]]()) { result, wine in
                result[wine.region, default: []].append(wine)
            }
            .sorted { $0.key < $1.key }
    }
}

struct MyWinesView_Previews: PreviewProvider {
    static var previews: some View {
        MyWinesView(wineData: WineData(), isRootView: true)
    }
}
