//
//  ReviewRequestHelper.swift
//  VinoBytes
//
//  Created by Logan Rausch on 12/15/24.
//


import StoreKit
import UIKit

struct ReviewRequestHelper {
    static func requestReviewIfAppropriate() {
        DispatchQueue.main.async {
            guard let scene = UIApplication.shared.connectedScenes.first as? UIWindowScene else {
                return
            }
            SKStoreReviewController.requestReview(in: scene)
        }
    }
}