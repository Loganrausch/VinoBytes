//
//  ChangeNameSheetView.swift
//  VinoBytes
//
//  Created by Logan Rausch on 2/24/25.
//

import SwiftUI

struct ChangeNameSheetView: View {
    @Environment(\.dismiss) private var dismiss
    @StateObject private var viewModel: ChangeNameViewModel
    @FocusState private var isFocused: Bool

    init(viewModel: ChangeNameViewModel) {
        _viewModel = StateObject(wrappedValue: viewModel)
    }

    var body: some View {
        ZStack {
            Color("Latte").ignoresSafeArea()
            VStack(spacing: 20) {
                Text("Change Your Name")
                    .font(.title)
                    .foregroundColor(.black)
                    .padding(.top)

                ZStack(alignment: .leading) {
                    if !isFocused && viewModel.firstName.isEmpty {
                        Text("First Name")
                            .foregroundColor(Color("Burgundy"))
                            .padding(.leading, 20)
                    }
                    TextField("", text: $viewModel.firstName)
                        .padding(10)
                        .background(Color.white)
                        .cornerRadius(8)
                        .overlay(
                            RoundedRectangle(cornerRadius: 8)
                                .stroke(Color("Burgundy"), lineWidth: 2)
                        )
                        .padding(.horizontal)
                        .focused($isFocused)
                }

                Button {
                    viewModel.save()
                    dismiss()
                } label: {
                    Text("Save")
                        .bold()
                        .foregroundColor(.white)
                        .padding()
                        .frame(maxWidth: .infinity)
                        .background(Color("Burgundy"))
                        .cornerRadius(10)
                        .padding(.horizontal)
                }

                Spacer()
            }
            .padding()
        }
        .preferredColorScheme(.light)
        .accentColor(Color("Burgundy"))
    }
}
