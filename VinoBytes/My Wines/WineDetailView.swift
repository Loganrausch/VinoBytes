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
                //                SHARING FEATURE LATER
                //                Button(action: {
                //                    isSharing = true
                //                }) {
                //                    Image(systemName: "square.and.arrow.up")
                //                }
            }
        )
        .sheet(isPresented: $isEditing) {
            WineFormView(wineEntity: wineEntity)
        }
        
        
        //        SHARING FEATURE LATER
        //        .sheet(isPresented: $isSharing) {
        //            ActivityView(activityItems: wineItems())
        //                }
    }
    
    
//    SHARING FUNCTION FOR LATER
//        func wineItems() -> [Any] {
//            var text = "\n"
//            text += "Wine Type: \(wineEntity.wineType ?? "")\n"
//            text += "Vintage: \(wineEntity.vintage ?? "")\n"
//            text += "Producer: \(wineEntity.producer ?? "")\n"
//            text += "Wine Name: \(wineEntity.wineName ?? "")\n"
//            text += "Region: \(wineEntity.region ?? "")\n"
//            text += "Grape: \(wineEntity.grape ?? "")\n"
//            text += "Sight: \(wineEntity.sight ?? "")\n"
//            text += "Smell/Taste: \(wineEntity.smellTaste ?? "")\n"
//            text += "Acid: \(wineEntity.acid ?? "")\n"
//            text += "Alcohol: \(wineEntity.alcohol ?? "")\n"
//            text += "Body: \(wineEntity.structureBody ?? "")\n"
//            text += "Sweetness: \(wineEntity.sweetness ?? "")\n"
//            text += "Tannin: \(wineEntity.tannin ?? "")\n"
//            text += "Rating: \(wineEntity.rating) out of 5\n"
//            text += "Final Thoughts: \(wineEntity.finalThoughts ?? "")\n\n"
//            text += "VinoBytes on iOS"
//    
//            var items: [Any] = [text]
//    
//            if let imageData = wineEntity.imageData, let image = UIImage(data: imageData) {
//                items.append(image)
//            }
//    
//            return items
//        }
    
    
}

struct WineDetailView_Previews: PreviewProvider {
    static var previews: some View {
        WineDetailView(wineEntity: WineEntity()) // Assuming a default initializable context or mock
    }
}

