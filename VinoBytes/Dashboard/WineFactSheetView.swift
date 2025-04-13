//
//  Untitled.swift
//  VinoBytes
//
//  Created by Logan Rausch on 2/22/25.
//

import SwiftUI

struct WineFactSheetView: View {
    let fact: String
    
    var body: some View {
        GeometryReader { geometry in
            ZStack {
                // Full background color
                Color.latte
                    .ignoresSafeArea()
                
                ScrollView(.vertical, showsIndicators: false) {
                    VStack(spacing: 20) {
                        
                        // Wine glass icon
                        Image(systemName: "wineglass")
                            .resizable()
                            .scaledToFit()
                            .frame(width: 30, height: 30) // Adjust size as needed
                            .foregroundColor(.maroon) // Match the text color
                        
                        // Wine fact text
                        Text(fact)
                            .font(.title)
                            .foregroundColor(.black)
                            .multilineTextAlignment(.center)
                            .padding(.horizontal, 28)
                    }
                    .frame(minHeight: geometry.size.height, alignment: .center)
                }
            }
        }
        .navigationTitle("Wine Fact")
        .navigationBarTitleDisplayMode(.inline)
        .onAppear {
            if #available(iOS 17.0, *) {
                UNUserNotificationCenter.current().setBadgeCount(0, withCompletionHandler: { error in
                    if let error = error {
                        print("Error clearing badge: \(error.localizedDescription)")
                    }
                })
            } else {
                UIApplication.shared.applicationIconBadgeNumber = 0
            }
        }
    }
}
