//
//  SpacedRepetitionIconView.swift
//  VinoBytes
//
//  Created by Logan Rausch on 9/18/24.
//

import Foundation

import SwiftUI

struct SpacedRepetitionDetailView: View {
    
    @Environment(\.presentationMode) var presentationMode
    
    var body: some View {
        NavigationView {
            ScrollView {
                VStack(alignment: .center, spacing: 15) {
                    
                    // Introduction
                    Text("VinoBytes uses spaced repetition to help you retain wine knowledge more effectively.")
                        .font(.title2)
                        .multilineTextAlignment(.center)
                        .fontWeight(.bold)
                        .padding(.top)
                    
                    Divider()
                        .frame(width: 200, height: 2) // Customize the width and height
                        .background(Color.lightMaroon) // Optionally, add a color
                        .padding(.vertical, 15) // Add padding if needed
                        .frame(maxWidth: .infinity, alignment: .center)
                    
                    VStack(alignment: .center, spacing: 10) {
                        
                        Text("If you know the answer, **swipe to the right**.")
                            .font(.title3)
                            .multilineTextAlignment(.center)
                        
                        Image("CorrectFlashcard")
                            .resizable()
                            .scaledToFit()
                            .frame(width: 350, height: 350)  // Customize the size of the image
                            .frame(maxWidth: .infinity, alignment: .center)
                        
                        
                        
                        
                        Text("This moves the card to the next box. The card will appear less frequently.")
                            .font(.title3)
                            .multilineTextAlignment(.center)
                        
                        Divider()
                            .frame(width: 200, height: 2) // Customize the width and height
                            .background(Color.lightMaroon) // Optionally, add a color
                            .padding(.vertical, 15) // Add padding if needed
                            .frame(maxWidth: .infinity, alignment: .center)
                        
                        
                        Text("If you don't know the answer, **swipe to the left**.")
                            .font(.title3)
                            .multilineTextAlignment(.center)
                        
                        Image("IncorrectFlashcard")
                            .resizable()
                            .scaledToFit()
                            .frame(width: 350, height: 350)  // Customize the size of the image
                            .frame(maxWidth: .infinity, alignment: .center)
                        
                        Text("This moves the card back to box 1, resetting the interval. The card will appear more frequently.")
                            .font(.title3)
                            .multilineTextAlignment(.center)
                    }
                    
                    Divider()
                        .frame(width: 200, height: 2) // Customize the width and height
                        .background(Color.lightMaroon) // Optionally, add a color
                        .padding(.vertical, 15) // Add padding if needed
                        .frame(maxWidth: .infinity, alignment: .center)
                    
                    
                    
                    
                    Text("**Review Intervals**")
                        .font(.title3)
                        .fontWeight(.bold)
                        .foregroundColor(.lightMaroon)
                    
                    Text("""
                                    **Box 1**: 1 day
                                    **Box 2**: 3 days
                                    **Box 3**: 7 days
                                    **Box 4**: 14 days
                                    **Box 5**: 30 days
                                    
                                    """)
                    .font(.title3)
                    
                    
                    
                    // Benefits
                    Text("Benefits")
                        .font(.title3)
                        .fontWeight(.bold)
                        .foregroundColor(.lightMaroon)
                    
                    
                    
                    Text("By reviewing information at optimal intervals, you strengthen long-term memory and focus your efforts on materials that need the most reinforcement.")
                    
                        .font(.title3)
                        .frame(maxWidth: .infinity, alignment: .leading)
                    
                    Text("Additional Info")
                        .font(.title3)
                        .fontWeight(.bold)
                        .foregroundColor(.lightMaroon)
                    
                    Text("""
                    Once a card reaches Box 5, you have mastered that material. Keep in mind, this process takes time!
                         
                    Even in Box 5, the card will stay in circulation and be presented every 30 days to ensure retention of material. No matter which box you are in, if you swipe left on the card, it will return to box 1 for more frequent review.
                    
                    """)
                    
                    .font(.title3)
                    
                    
                    Text("**Please contact us via the feedback form in your account settings if you have any questions!**")
                    
                        .font(.headline)
                        .multilineTextAlignment(.center)
                    
                    
                    Spacer()
                }
                .padding()
            }
            .navigationTitle("Spaced Repetition")
            .navigationBarTitleDisplayMode(.inline) // Set the title to display inline
            .navigationBarItems(trailing: Button("Done") {
                presentationMode.wrappedValue.dismiss()
            })
            .accentColor(.latte) // Apply the accent color to the navigation bar items
        }
    }
}


// Preview for the sheet view
struct SpacedRepetitionDetailView_Previews: PreviewProvider {
    static var previews: some View {
        SpacedRepetitionDetailView()
    }
}
