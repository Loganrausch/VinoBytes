//
//  StudyRegion.swift
//  VinoBytes
//
//  Created by Logan Rausch on 5/8/25.
//

import Foundation

struct StudyRegion: Identifiable {
    let name: String
    let isPremium: Bool
    var id: String { name }
}
