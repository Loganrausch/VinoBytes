//
//  RefreshNotifier.swift
//  VinoBytes
//
//  Created by Logan Rausch on 8/22/24.
//

import Foundation

class RefreshNotifier: ObservableObject {
    @Published var needsRefresh: Bool = false
}
