//
//  ChangeNameSheetView.swift
//  VinoBytes
//
//  Created by Logan Rausch on 2/24/25.
//

import SwiftUI

struct ChangeNameSheetView: View {
    @Environment(\.dismiss) var dismiss
    @Environment(\.managedObjectContext) private var context
    @EnvironmentObject var userProfile: UserProfileViewModel
    @State private var firstName: String = ""
    @FocusState private var isFocused: Bool

    var body: some View {
        ZStack {
            Color("Latte")
                .ignoresSafeArea() // Use your custom background color
            
            VStack(spacing: 20) {
                Text("Change Your Name")
                    .font(.title)
                    .foregroundColor(.black)
                    .padding(.top)
                
                // Custom TextField with placeholder behavior.
                ZStack(alignment: .leading) {
                    if !isFocused && firstName.isEmpty {
                        Text("First Name")
                            .foregroundColor(Color("Maroon"))
                            .padding(.leading, 20)
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
                        .focused($isFocused)
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
                        .background(Color("Maroon"))
                        .cornerRadius(10)
                        .padding(.horizontal)
                }
                
                Spacer()
            }
            .padding()
        }
        .onAppear {
            // Pre-fill with the current first name
            firstName = userProfile.firstName
        }
        .preferredColorScheme(.light)
        .accentColor(Color.maroon)
    }
}
