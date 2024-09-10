//
//  WineDetailView.swift
//  VinoDecks
//
//  Created by Logan Rausch on 3/4/24.

import SwiftUI
import UIKit

struct WineDetailView: View {
    @Environment(\.presentationMode) var presentationMode
    @Environment(\.managedObjectContext) private var context
    
    @ObservedObject var wineEntity: WineEntity
    
    @State private var isSharing = false
    @State private var isEditing = false

    var body: some View {
        Form {
            if let imageData = wineEntity.imageData, let uiImage = UIImage(data: imageData) {
                Section(header: Text("Wine Image")) {
                    Image(uiImage: uiImage)
                        .resizable()
                        .scaledToFit()
                }
            }
            
            Section(header: Text("Wine Type")) {
                            Text(wineEntity.wineType ?? "Not Specified")  // Display the wine type
                        }

            Section(header: Text("Vintage")) {
                // Directly display the vintage as it's already a string. No need for String() conversion.
                Text(wineEntity.vintage ?? "Not specified") // Provide a fallback in case of nil
            }

            Section(header: Text("Producer")) {
                // Display the producer, handle nil with a fallback to an empty string or placeholder
                Text(wineEntity.producer ?? "Unknown Producer")
            }

            Section(header: Text("Wine Name")) {
                // Display the wine name, handle nil similarly
                Text(wineEntity.wineName ?? "Unnamed Wine")
            }

            Section(header: Text("Region")) {
                Text(wineEntity.region ?? "")
            }

            Section(header: Text("Grape")) {
                Text(wineEntity.grape ?? "")
            }

            Section(header: Text("Sight")) {
                Text(wineEntity.sight ?? "")
            }

            Section(header: Text("Smell / Taste")) {
                Text(wineEntity.smellTaste ?? "")
            }

            Section(header: Text("Structure")) {
                VStack(alignment: .leading) {
                    if let acid = wineEntity.acid {
                        Text("Acid: \(acid)")
                    }
                    if let alcohol = wineEntity.alcohol {
                        Text("Alcohol: \(alcohol)")
                    }
                    if let body = wineEntity.structureBody {
                        Text("Body: \(body)")
                    }
                    if let sweetness = wineEntity.sweetness {
                        Text("Sweetness: \(sweetness)")
                    }
                    // Display tannin information or a message regarding its typical minimal presence
                           if wineEntity.wineType == "Red" || wineEntity.wineType == "Orange" || wineEntity.wineType == "Fortified" {
                               if let tannin = wineEntity.tannin {
                                   Text("Tannin: \(tannin)")
                               }
                           } else {
                               // Display a message for other wine types
                               Text("Tannin: Typically minimal for selected type.")
                           }
                       }
                   }

            Section(header: Text("Rating")) {
                           StarRatingDisplayView(rating: Int(wineEntity.rating))
                       }

            Section(header: Text("Final Thoughts")) {
                Text(wineEntity.finalThoughts ?? "")
            }
        }
        .navigationBarItems(
            trailing: HStack {
                Button("Edit") {
                    isEditing = true
                }
                Button(action: {
                    isSharing = true
                }) {
                    Image(systemName: "square.and.arrow.up")
                }
            }
        )
        .sheet(isPresented: $isEditing) {
            WineFormView(wineEntity: wineEntity)
        }
        .sheet(isPresented: $isSharing, content: {
            ActivityViewController(activityItems: wineItems())
        })
    }

    func wineItems() -> [Any] {
        var items: [Any] = [
            "\n",
            "Wine Type: \(wineEntity.wineType ?? "")\n",
            "Vintage: \(wineEntity.vintage ?? "")\n",
            "Producer: \(wineEntity.producer ?? "")\n",
            "Wine Name: \(wineEntity.wineName ?? "")\n",
            "Region: \(wineEntity.region ?? "")\n",
            "Grape: \(wineEntity.grape ?? "")\n",
            "Sight: \(wineEntity.sight ?? "")\n",
            "Smell/Taste: \(wineEntity.smellTaste ?? "")\n",
            "Acid: \(wineEntity.acid ?? "")\n",
            "Alcohol: \(wineEntity.alcohol ?? "")\n",
            "Body: \(wineEntity.structureBody ?? "")\n",
            "Sweetness: \(wineEntity.sweetness ?? "")\n",
            "Tannin: \(wineEntity.tannin ?? "")\n",
            "Rating: \(wineEntity.rating) out of 5\n",
            "Final Thoughts: \(wineEntity.finalThoughts ?? "")\n\n", // Added extra newline for spacing
            "VinoBytes on iOS"
        ]

        if let imageData = wineEntity.imageData, let image = UIImage(data: imageData) {
            items.append(image)
        }

        return items
    }
}

struct WineDetailView_Previews: PreviewProvider {
    static var previews: some View {
        WineDetailView(wineEntity: WineEntity()) // Assuming a default initializable context or mock
    }
}
