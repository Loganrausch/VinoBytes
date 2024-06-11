//
//  WineLawDetailView.swift
//  VinoBytes
//
//  Created by Logan Rausch on 6/3/24.
//

import Foundation

import SwiftUI

struct WineLawDetailView: View {
    var wineLaw: WineLaw

    var body: some View {
        ScrollView {
            VStack(alignment: .leading) {
                Text(wineLaw.countryOverview)
                    .padding()
                    .font(.headline)

                ForEach(wineLaw.classifications, id: \.name) { classification in
                    VStack(alignment: .leading) {
                        Text(classification.name)
                            .font(.title3)
                            .bold()
                            .padding(.bottom, 1)
                        
                        Text(classification.description)
                            .padding(.bottom, 5)
                    }
                    .padding()
                    .background(Color.gray.opacity(0.2))
                    .cornerRadius(5)
                }
            }
            .padding()
        }
        .navigationTitle("\(wineLaw.country) Wine Laws")
    }
}

struct WineLawDetailView_Previews: PreviewProvider {
    static var previews: some View {
        WineLawDetailView(wineLaw: WineLawData.laws[0])
    }
}
