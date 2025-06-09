//
//  CustomTextField.swift
//  VinoBytes
//
//  Created by Logan Rausch on 5/7/25.
//

import SwiftUI

struct CustomTextField: View {
    var placeholder: String
    @Binding var text: String
    var onSend: () -> Void
    @FocusState private var isFocused: Bool
    
    var body: some View {
        HStack {
            ZStack(alignment: .leading) {
                if text.isEmpty {
                    Text(placeholder)
                        .foregroundColor(.gray) // Placeholder text color
                        .padding(.leading, 4)
                }
                TextField("", text: $text)
                    .foregroundColor(.black) // Input text color
                    .accentColor(.black) // Set cursor color here
                    .padding(4)
                    .focused($isFocused)
            }
            
            Button(action: {
                            // Dismiss the keyboard and stop voice input
                            isFocused = false
                            onSend()
                        }) {
                            Image(systemName: "arrow.up.square")
                                .resizable()
                                .frame(width: 26, height: 26)
                                .foregroundColor(Color("Burgundy"))
                                .padding(.trailing, -4)
                        }
                    }
        .padding(.horizontal)
        .padding(.vertical, 8)
        .background(Color.latte.opacity(0.8))
        .cornerRadius(8)
        .overlay(
            RoundedRectangle(cornerRadius: 8)
                .stroke(Color.burgundy, lineWidth: 2)
        )
    }
}
