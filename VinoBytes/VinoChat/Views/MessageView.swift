//
//  MessageView.swift
//  VinoBytes
//
//  Created by Logan Rausch on 5/7/25.
//

import SwiftUI
import MarkdownUI

struct MessageView: View {
    var message: ChatMessage
    
    var body: some View {
        HStack {
            if let content = message.content, !content.isEmpty {
                messageBubble(for: content, isUser: message.role == "user")
            } else {
                // Optionally handle empty messages differently or not at all
                Text("Message unavailable")  // More informative fallback text
                    .foregroundColor(.gray)
                    .padding()
            }
        }
        .padding(.horizontal)
    }
    
    @ViewBuilder
    private func messageBubble(for content: String, isUser: Bool) -> some View {
        if isUser {
            Spacer()
            Markdown(content)
                .markdownTheme(.userBubbleTheme)
                .padding()
                .background(Color("Burgundy").opacity(0.38))
                .clipShape(RoundedRectangle(cornerRadius: 12))
                .frame(maxWidth: 300, alignment: .trailing)
                .layoutPriority(1)
        } else {
            Markdown(content)
                .markdownTheme(.assistantBubbleTheme)
                .padding()
                .background(Color("DarkLatte"))
                .clipShape(RoundedRectangle(cornerRadius: 12))
                .frame(maxWidth: 300, alignment: .leading)
                .layoutPriority(1)
            Spacer()
        }
    }
}
