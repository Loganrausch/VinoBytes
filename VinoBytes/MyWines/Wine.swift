//
//  CommonStructs.swift
//  VinoBytes
//
//  Created by Logan Rausch on 4/21/24.
//

import Foundation
import SwiftUI

struct Wine: Identifiable {
    var id = UUID()
    var producer: String
    var wineName: String
    var region: String
    var grape: String
    var vintage: Int
    var rating: String
    var sight: String
    var smellTaste: String
    var acid: String
    var alcohol: String
    var structureBody: String
    var sweetness: String
    var tannin: String
    var image: UIImage?
    var finalThoughts: String
}


extension Wine {
    var vintageFormatted: String {
        get {
            return "\(vintage)"
        }
    }
}


