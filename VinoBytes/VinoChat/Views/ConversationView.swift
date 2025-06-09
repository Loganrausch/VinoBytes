//
//  ConversationView.swift
//  VinoBytes
//
//  Created by Logan Rausch on 5/8/25.
//

import SwiftUI

struct ConversationView: View {
    var conversation: Conversation

    var body: some View {
        Text(conversation.title ?? "No initial message")
            .foregroundColor(Color("Burgundy"))  // Change text color to burgundy
            .padding(.vertical, 4)  // Adjust padding for better spacing
            .frame(maxWidth: .infinity, minHeight: 20, alignment: .leading)  // Ensures a minimum height but adapts if content needs more space
    }
}
