//
//  MyWinesView.swift
//  VinoDecks
//
//  Created by Logan Rausch on 3/2/24.
//
import Foundation

import SwiftUI


struct MyWinesView: View {
    @ObservedObject var wineData: WineData
    @State private var searchText: String = ""

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
                        String(wine.vintage).contains(searchText)
                }
                if !filteredWines.isEmpty {
                    return (region, filteredWines)
                }
                return nil
            }
        }
    }

    var body: some View {
        NavigationView {
            VStack {
                TextField("Search", text: $searchText)
                    .padding()
                    .background(Color(.systemGray5))
                    .cornerRadius(8)
                    .padding(.horizontal)

                List {
                                    ForEach(filteredWinesGrouped, id: \.0) { region, regionWines in
                                        Section(header: Text(region)) {
                                            ForEach(regionWines.indices, id: \.self) { index in
                                                let wineBinding = $wineData.wines[index]
                                                NavigationLink(destination: WineDetailView(wine: wineBinding, wineData: wineData)) {
                                                    HStack {
                                                        Text("\(String(wineBinding.wrappedValue.vintage)) \(wineBinding.wrappedValue.producer) \(wineBinding.wrappedValue.wineName)")
                                                            .lineLimit(1)
                                                    }
                                                }


                                            }
                                            .onDelete { indexSet in
                                                wineData.wines.remove(atOffsets: indexSet)
                                            }
                                        }
                                    }
                                }
                                .listStyle(PlainListStyle())


                NavigationLink(destination: WineFormView(addWine: { wine in
                    wineData.wines.append(wine)
                })) {
                    Text("Add a Wine")
                        .padding()
                        .foregroundColor(.white)
                        .background(Color(red: 128 / 255, green: 0, blue: 0))
                        .cornerRadius(8)
                }
                .padding()
            }
            .padding()
            .navigationBarTitle("My Wines")
        }
    }

    private func sortedWines() -> [(String, [Wine])] {
        return wineData.wines
            .sorted { $0.region < $1.region || ($0.region == $1.region && $0.producer < $1.producer) }
            .reduce(into: [String: [Wine]]()) { result, wine in
                result[wine.region, default: []].append(wine)
            }
            .sorted { $0.key < $1.key }
    }
}

struct MyWinesView_Previews: PreviewProvider {
    static var previews: some View {
        MyWinesView(wineData: WineData())
    }
}
