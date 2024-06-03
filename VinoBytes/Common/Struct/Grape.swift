//
//  Grape.swift
//  VinoBytes
//
//  Created by Logan Rausch on 6/2/24.
//

import Foundation

struct Grape: Identifiable {
    var id = UUID()
    var name: String
    var details: String
    var imageName: String
    var iconNames: [String]
}
