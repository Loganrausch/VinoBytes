//
//  Untitled.swift
//  VinoBytes
//
//  Created by Logan Rausch on 5/6/25.
//

import Foundation

enum ActiveAlert: Identifiable {
    case resetWines, resetConversations, resetFlashcardSessions
    case iCloudEnabled, iCloudDisabled

    var id: Int { hashValue }
}
