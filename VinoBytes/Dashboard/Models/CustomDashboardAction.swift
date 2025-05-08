//
//  CustomDashboardAction.swift
//  VinoBytes
//
//  Created by Logan Rausch on 5/4/25.
//

import Foundation

    enum CustomDashboardAction: String, CaseIterable, Identifiable {
        case addWineShortcut
        case aiHistoryShortcut
        case flashcardHistoryShortcut
        case grapesShortcut
        case glossaryShortcut
        case pairingsShortcut
        case regionsShortcut
        case wineflawsShortcut
        
        
        
        var id: String { rawValue }
        
        var displayName: String {
            switch self {
            case .addWineShortcut:
                return "Add Wine"
            case .aiHistoryShortcut:
                return "AI History"
            case .flashcardHistoryShortcut:
                return "Flashcard History"
            case .grapesShortcut:
                return "Grapes"
            case .glossaryShortcut:
                return "Glossary"
            case .pairingsShortcut:
                return "Pairings"
            case .regionsShortcut:
                return "Regions"
            case .wineflawsShortcut:
                return "Wine Flaws"
                
            }
        }
    }
