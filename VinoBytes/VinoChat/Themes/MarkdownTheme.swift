//
//  MarkdownTheme.swift
//  VinoBytes
//
//  Created by Logan Rausch on 5/7/25.
//

import MarkdownUI

extension Theme {
    static let userBubbleTheme = Theme()
        .text {
            ForegroundColor(.primary)
            FontSize(16)
        }
        .heading1 { configuration in
            configuration.label
                .font(.system(size: 24, weight: .bold))
        }
        .heading2 { configuration in
            configuration.label
                .font(.system(size: 20, weight: .bold))
        }
        .paragraph { configuration in
            configuration.label
                .font(.system(size: 16))
        }
        // Add more customizations as needed

    static let assistantBubbleTheme = Theme()
        .text {
            ForegroundColor(.primary)
            FontSize(16)
        }
        .heading1 { configuration in
            configuration.label
                .font(.system(size: 24, weight: .bold))
        }
        .heading2 { configuration in
            configuration.label
                .font(.system(size: 20, weight: .bold))
        }
        .paragraph { configuration in
            configuration.label
                .font(.system(size: 16))
        }
        // Add more customizations as needed
}
