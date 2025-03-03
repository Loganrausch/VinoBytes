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
                // Title with extra horizontal padding
                Text("Let’s personalize your experience!")
                    .font(.title)
                    .multilineTextAlignment(.center)
                    .lineLimit(2)
                    .minimumScaleFactor(0.8)
                    .padding(.horizontal, 20)
                
                // Text field for name input
                ZStack(alignment: .leading) {
                    if !isFocused && firstName.isEmpty {
                        Text("First Name")
                            .foregroundColor(Color("Maroon"))
                            .padding(.leading, 15)
                            .zIndex(1) // Ensures this text is rendered above the TextField
                    }
                    TextField("", text: $firstName)
                        .padding(10)
                        .frame(maxWidth: .infinity)
                        .background(Color.white)
                        .cornerRadius(8)
                        .overlay(
                            RoundedRectangle(cornerRadius: 8)
                                .stroke(Color("Maroon"), lineWidth: 2)
                        )
                }
                .padding(.horizontal, 20)
                
                // Buttons for "Save" and "Skip"
                HStack(spacing: 20) {
                    Button(action: {
                        let nameToSave = firstName.trimmingCharacters(in: .whitespaces).isEmpty ? "Guest" : firstName
                        userProfile.saveUserProfile(firstName: nameToSave, context: context)
                        dismiss()
                    }) {
                        Text("Save")
                            .bold()
                            .frame(maxWidth: .infinity, minHeight: 44)
                            .foregroundColor(.white)
                            .background(Color.maroon)
                            .cornerRadius(10)
                    }
                    
                    Button(action: {
                        userProfile.saveUserProfile(firstName: "Guest", context: context)
                        dismiss()
                    }) {
                        Text("Skip")
                            .bold()
                            .frame(maxWidth: .infinity, minHeight: 44)
                            .foregroundColor(.white)
                            .background(Color.maroon)
                            .cornerRadius(10)
                    }
                }
                .padding(.horizontal, 20)
                
               
            }
            .padding(.vertical, 20)
        }
        .preferredColorScheme(.light)
        .accentColor(Color.maroon)
    }
}
