//
//  ShowSpacedRepetitionDetail.swift
//  VinoBytes
//
//  Created by Logan Rausch on 10/4/24.
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
                        .frame(width: 300, height: 1.5)
                        .background(Color.lightMaroon)
                        .padding(.vertical, 15)
                        .frame(maxWidth: .infinity, alignment: .center)
                    
                    VStack(alignment: .center, spacing: 10) {
                        // Explanation for Box 0
                        Text("All new cards start in **Box 0** and are considered unreviewed.")
                            .font(.title3)
                  
                            .bold()
                            .multilineTextAlignment(.center)
                        
                        Spacer()
                        
                        Text("When you review a card for the first time and swipe right, it moves to **Box 1** and begins the spaced repetition ladder.")
                            .font(.title3)
                            .multilineTextAlignment(.center)
                        
                        Divider()
                            .frame(width: 300, height: 1.5)
                            .background(Color.lightMaroon)
                            .padding(.vertical, 15)
                            .frame(maxWidth: .infinity, alignment: .center)
                        
                       
                            Text("If you know the answer, **swipe to the right**.")
                                .font(.title3)
                                .multilineTextAlignment(.center)
                        
                        
                        Image("CorrectFlashcard")
                            .resizable()
                            .scaledToFit()
                            .frame(width: 350, height: 350)
                            .frame(maxWidth: .infinity, alignment: .center)
                        
                        Text("This moves the card to the next box up. The card will appear less frequently for review.")
                            .font(.title3)
                            .multilineTextAlignment(.center)
                        
                        Divider()
                            .frame(width: 300, height: 1.5)
                            .background(Color.lightMaroon)
                            .padding(.vertical, 15)
                            .frame(maxWidth: .infinity, alignment: .center)
                        
                       
                            Text("If you don't know the answer, **swipe to the left**.")
                                .font(.title3)
                                .multilineTextAlignment(.center)
                     
                        
                        Image("IncorrectFlashcard")
                            .resizable()
                            .scaledToFit()
                            .frame(width: 350, height: 350)
                            .frame(maxWidth: .infinity, alignment: .center)
                        
                        Text("This will return the card to Box 0, resetting the spaced repetition ladder.")
                            .font(.title3)
                            .multilineTextAlignment(.center)
                    }
                    
                    Divider()
                        .frame(width: 300, height: 1.5)
                        .background(Color.lightMaroon)
                        .padding(.vertical, 15)
                        .frame(maxWidth: .infinity, alignment: .center)
                    VStack {
                        Text("**Spaced Repetition Ladder**")
                            .font(.title3)
                            .fontWeight(.bold)
                            .foregroundColor(.lightMaroon)
                            .padding(.bottom)
                        
                        Text("""
                                    **Box 0**: Cards Start Here
                                    **Box 1**: One day until next review
                                    **Box 2**: Three days until next review
                                    **Box 3**: Seven days until next review
                                    **Box 4**: Fourteen days until next review
                                    **Box 5**: Thirty days until next review
                                    
                                    """)
                        
                        .font(.title3)
                    }
                    
                    // Benefits section
                    Text("Benefits")
                        .font(.title3)
                        .fontWeight(.bold)
                        .foregroundColor(.lightMaroon)
                    
                    Text("By reviewing information at optimal intervals, you strengthen long-term memory and focus your efforts on materials that need the most reinforcement.")
                        .font(.title3)
                        .frame(maxWidth: .infinity, alignment: .leading)
                    
                    // Additional Info
                    Text("Additional Info")
                        .font(.title3)
                        .fontWeight(.bold)
                        .foregroundColor(.lightMaroon)
                    
                    Text("""
                    Once a card reaches Box 5, you have mastered that material. Keep in mind, this process takes time!
                         
                    Even in Box 5, the card will stay in circulation and be presented every 30 days to ensure retention of material. If a card is swiped left at any box, it will return to Box 0, ensuring a focus on materials needing reinforcement.
                    
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
            .navigationBarTitleDisplayMode(.inline)
            .navigationBarItems(trailing: Button("Done") {
                presentationMode.wrappedValue.dismiss()
            })
            .accentColor(.latte)
            .font(.headline)
        }
    }
}
// Preview for the sheet view
struct SpacedRepetitionDetailView_Previews: PreviewProvider {
    static var previews: some View {
        SpacedRepetitionDetailView()
    }
}
