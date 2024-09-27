//
//  CommonStructs.swift
//  VinoBytes
//
//  Created by Logan Rausch on 4/21/24.
//

import Foundation
import SwiftUI
import UIKit

struct Wine: Identifiable {
    var id = UUID()
    var producer: String
    var wineName: String
    var wineType: String
    var region: String
    var grape: String
    var vintage: String
    var rating: Int
    var sight: String
    var smellTaste: String
    var acid: String
    var alcohol: String
    var structureBody: String
    var sweetness: String
    var tannin: String
    var image: UIImage?
    var finalThoughts: String
    var dateAdded: Date
}


