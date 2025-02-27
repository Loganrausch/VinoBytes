//
//  Untitled.swift
//  VinoBytes
//
//  Created by Logan Rausch on 2/23/25.
//

import SwiftUI

struct NameInputSheetView: View {
    @Environment(\.dismiss) var dismiss
    @Environment(\.managedObjectContext) private var context
    @EnvironmentObject var userProfile: UserProfileViewModel
    @State private var firstName: String = ""
    @FocusState private var isFocused: Bool  // Track focus on the text field

    var body: some View {
        ZStack {
            Color("Latte")
                .ignoresSafeArea()
            
            VStack(spacing: 20) {
                Text("Let’s personalize your experience!")
                    .font(.title)
                    .multilineTextAlignment(.center)
                    .lineLimit(2)               // Allow up to 2 lines of text
                    .minimumScaleFactor(0.8)    // Shrink text down to 80% if needed
                    .fixedSize(horizontal: false, vertical: true)
                    .padding(.top)
                
                ZStack(alignment: .leading) {
                    // Only show placeholder when not focused and text is empty.
                    if !isFocused && firstName.isEmpty {
                        Text("First Name")
                            .foregroundColor(Color("Maroon"))
                            .padding(.leading, 25)
                            .zIndex(1)
                    }
                    TextField("", text: $firstName)
                        .padding(10)
                        .background(Color.white)
                        .cornerRadius(8)
                        .overlay(
                            RoundedRectangle(cornerRadius: 8)
                                .stroke(Color("Maroon"), lineWidth: 2)
                        )
                        .padding(.horizontal)
                        .focused($isFocused)  // Bind focus state
                }
                
                Button(action: {
                    if !firstName.trimmingCharacters(in: .whitespaces).isEmpty {
                        userProfile.saveUserProfile(firstName: firstName, context: context)
                        dismiss()
                    }
                }) {
                    Text("Save")
                        .bold()
                        .foregroundColor(.white)
                        .padding()
                        .frame(maxWidth: .infinity)
                        .background(Color.maroon)
                        .cornerRadius(10)
                        .padding(.horizontal)
                }
                
                Spacer()
            }
            .padding(.top)
        }
    }
}
