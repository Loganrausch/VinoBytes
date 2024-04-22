//
//  WineDetailView.swift
//  VinoDecks
//
//  Created by Logan Rausch on 3/4/24.
//
import SwiftUI

struct WineDetailView: View {
    @Environment(\.presentationMode) var presentationMode
    @Binding var wine: Wine
    @State private var isSharing = false
    var wineData: WineData
    @State private var isEditing = false
    
    var body: some View {
        Form {
            if wine.image != nil {
                Section(header: Text("Wine Image")) {
                    if let image = wine.image {
                        Image(uiImage: image)
                            .resizable()
                            .scaledToFit()
                    }
                }
            }
            
            Section(header: Text("Vintage")) {
                Text("\(wine.vintageFormatted)")
            }
            
            Section(header: Text("Producer")) {
                Text(wine.producer)
            }
            
            Section(header: Text("Wine Name")) {
                Text(wine.wineName)
            }
            
            Section(header: Text("Region")) {
                Text(wine.region)
            }
            
            Section(header: Text("Grape")) {
                Text(wine.grape)
            }
            
            Section(header: Text("Sight")) {
                Text(wine.sight)
            }
            
            Section(header: Text("Smell / Taste")) {
                Text(wine.smellTaste)
            }
            
            Section(header: Text("Structure")) {
                if wine.acid != "" {
                    Text("Acid: \(wine.acid)")
                }
                if wine.alcohol != "" {
                    Text("Alcohol: \(wine.alcohol)")
                }
                if wine.structureBody != "" {
                    Text("Body: \(wine.structureBody)")
                }
                if wine.sweetness != "" {
                    Text("Sweetness: \(wine.sweetness)")
                }
                if wine.tannin != "" {
                    Text("Tannin: \(wine.tannin)")
                }
            }

            
            Section(header: Text("Rating")) {
                HStack {
                    if wine.rating == "Negative" {
                        Image(systemName: "hand.thumbsdown.circle.fill")
                            .resizable()
                            .frame(width: 40, height: 40)
                            .foregroundColor(.red)
                    } else if wine.rating == "Positive" {
                        Image(systemName: "hand.thumbsup.circle.fill")
                            .resizable()
                            .frame(width: 40, height: 40)
                            .foregroundColor(.green)
                    }
                }
            }
            
            Section(header: Text("Final Thoughts")) {
                Text(wine.finalThoughts)
            }

        }
        .navigationBarItems(
            trailing: Button("Edit") {
                isEditing = true
            }
        )
        .sheet(isPresented: $isEditing) {
            WineFormView(
                wine: wine,
                addWine: nil, // We don't need to set this here since we are updating an existing wine
                updateWine: { updatedWine, completion in
                    if let index = wineData.wines.firstIndex(where: { $0.id == updatedWine.id }) {
                        wineData.wines[index] = updatedWine
                        completion()
                    }
                },
                onWineUpdated: {
                    // Update the UI or perform further actions after the wine has been updated
                    isEditing = false
                }
            )
        }
    }
    
    func wineItems() -> [Any] {
        var items: [Any] = [
            "Producer: \(wine.producer)\n",
            "Wine Name: \(wine.wineName)\n",
            "Region: \(wine.region)\n",
            "Grape: \(wine.grape)\n",
            "Vintage: \(wine.vintageFormatted)\n",
            "Rating: \(wine.rating)\n",
            "Sight: \(wine.sight)\n",
            "Smell/Taste: \(wine.smellTaste)\n",
            "Acid: \(wine.acid)\n",
            "Alcohol: \(wine.alcohol)\n",
            "Body: \(wine.structureBody)\n",
            "Sweetness: \(wine.sweetness)\n",
            "Tannin: \(wine.tannin)\n"
        ]
        
        if let image = wine.image {
            items.append(image)
        }
        
        return items
    }
}

struct WineDetailView_Previews: PreviewProvider {
    @State static var wine = Wine(
        producer: "Producer Name",
        wineName: "Wine Name",
        region: "Region",
        grape: "Grape",
        vintage: 2020,
        rating: "Neutral",
        sight: "Sight description",
        smellTaste: "Smell/Taste description",
        acid: "Med",
        alcohol: "Med",
        structureBody: "Med",
        sweetness: "Dry",
        tannin: "Med",
        image: nil,
        finalThoughts: "Other"
    )
    
    static var previews: some View {
        NavigationView {
            WineDetailView(wine: $wine, wineData: WineData())
        }
    }
}
