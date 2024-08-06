//
//  StarRatingView.swift
//  VinoBytes
//
//  Created by Logan Rausch on 7/8/24.
//

import Foundation
import SwiftUI

struct StarRatingView: View {
    @Binding var rating: Int
    var maximumRating = 5

    var offImage: Image?
    var onImage = Image(systemName: "wineglass.fill")
    
    var offColor = Color.gray
    var onColor = Color.maroon
    
    func image(for number: Int) -> Image {
        if number > rating {
            return offImage ?? onImage
        } else {
            return onImage
        }
    }
    
    var body: some View {
        HStack {
            ForEach(1...maximumRating, id: \.self) { number in
                image(for: number)
                    .foregroundColor(number > rating ? offColor : onColor)
                    .onTapGesture {
                        rating = number
                    }
            }
        }
    }
}
