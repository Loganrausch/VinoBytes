//
//  StarRatingDisplayView.swift
//  VinoBytes
//
//  Created by Logan Rausch on 7/8/24.
//

import Foundation
import SwiftUI

struct StarRatingDisplayView: View {
    let rating: Int

    var body: some View {
        HStack {
            ForEach(1...5, id: \.self) { index in
                Image(systemName: index <= rating ? "wineglass.fill" : "wineglass")
                    .foregroundColor(index <= rating ? .yellow : .gray)
            }
        }
    }
}

