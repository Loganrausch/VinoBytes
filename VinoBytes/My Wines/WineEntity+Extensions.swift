//
//  WineEntity+Extensions.swift
//  VinoBytes
//
//  Created by Logan Rausch on 7/3/24.
//

import Foundation
import CoreData
import UIKit // Import UIKit to handle UIImage conversions

extension WineEntity {
    // Convert from Wine struct to WineEntity (managed object)
    func fromWine(_ wine: Wine) {
        self.id = wine.id
        self.producer = wine.producer
        self.wineName = wine.wineName
        self.wineType = wine.wineType
        self.region = wine.region
        self.grape = wine.grape
        self.vintage = wine.vintage
        self.rating = Int16(wine.rating)
        self.sight = wine.sight
        self.smellTaste = wine.smellTaste
        self.acid = wine.acid
        self.alcohol = wine.alcohol
        self.structureBody = wine.structureBody
        self.sweetness = wine.sweetness
        self.tannin = wine.tannin
        self.imageData = wine.image?.jpegData(compressionQuality: 1.0)
        self.finalThoughts = wine.finalThoughts
        
        // **Only set dateAdded if it's nil (i.e., new entity)**
                if self.dateAdded == nil {
                    self.dateAdded = Date()
                }
            }
    

    // Convert from WineEntity (managed object) to Wine struct
    func toWine() -> Wine {
        return Wine(
            id: self.id!,
            producer: self.producer!,
            wineName: self.wineName!,
            wineType: self.wineType!,
            region: self.region!,
            grape: self.grape!,
            vintage: self.vintage!,
            rating: Int(self.rating),
            sight: self.sight!,
            smellTaste: self.smellTaste!,
            acid: self.acid!,
            alcohol: self.alcohol!,
            structureBody: self.structureBody!,
            sweetness: self.sweetness!,
            tannin: self.tannin!,
            image: (self.imageData != nil ? UIImage(data: self.imageData!) : nil),
            finalThoughts: self.finalThoughts!,
            dateAdded: self.dateAdded ?? Date() // Handle dateAdded
        )
    }
}
