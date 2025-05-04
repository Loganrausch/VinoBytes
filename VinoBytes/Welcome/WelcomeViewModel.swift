//
//  WelcomeViewModel.swift
//  VinoBytes
//
//  Created by Logan Rausch on 5/2/25.
//

import Foundation
import Combine

class WelcomeViewModel: ObservableObject {

    @Published var selectedTab: Int = 0

    let totalTabs = 7

    func skipToLast() {
        selectedTab = totalTabs - 1
    }
}
