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
    @StateObject private var studySessionManager = StudySessionManager.shared  // Dependent Manager
    @StateObject private var flashcardManager = FlashcardManager.shared        // Dependent Manager
    
    init() {
        // Initialize OpenAIManager here, after Core Data is ready
        let context = PersistenceController.shared.container.viewContext
        _openAIManager = StateObject(wrappedValue: OpenAIManager(context: context))
    }
    
    var body: some View {
        MainTabView()
                .environmentObject(openAIManager)
                .environmentObject(studySessionManager)
                .environmentObject(flashcardManager)
        }
    }
