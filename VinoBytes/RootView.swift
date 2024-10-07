//
//  RootView.swift
//  VinoBytes
//
//  Created by Logan Rausch on 9/22/24.
//

import Foundation

import SwiftUI

struct RootView: View {
    @StateObject private var openAIManager: OpenAIManager
    
    init() {
        // Initialize OpenAIManager here, after Core Data is ready
        let context = PersistenceController.shared.container.viewContext
        _openAIManager = StateObject(wrappedValue: OpenAIManager(context: context))
    }
    
    var body: some View {
        ContentView()
            .environmentObject(openAIManager)
            .environmentObject(FlashcardManager.shared) // Inject as Environment Object
    }
}
