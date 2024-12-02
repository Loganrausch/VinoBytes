//
//  GrapeDetailView.swift
//  VinoBytes
//
//  Created by Logan Rausch on 6/2/24.
//

import SwiftUI

struct GrapeDetailView: View {
    var grape: Grape

    var body: some View {
        ScrollView {
            VStack(alignment: .leading, spacing: 20) {
                // Grape Image
                // Uncomment the following lines if you want to display the grape image
                /*
                Image(grape.imageName)
                    .resizable()
                    .scaledToFit()
                    .frame(maxWidth: .infinity)
                    .frame(height: 300)
                    .clipped()
                    .cornerRadius(10)
                    .padding(.horizontal)
                    .padding(.top)
                */

                // Grape Name
                Text(grape.name)
                        .font(.title)
                        .fontWeight(.bold)
                        .padding()
                       
                        
               

                SectionBox(title: "Origin")  {
                    Text(grape.details.origin)
                }

                SectionBox(title: "Countries Where It’s Grown") {
                    VStack (alignment: .leading, spacing: 5) {
                        ForEach(grape.details.countries.primary, id: \.self) { country in
                            Text(country)
                        }
                    }
                }

                SectionBox(title: "Tasting Notes") {
                    VStack(alignment: .leading, spacing: 5) {
                        
                        LabeledContent(label: "Color", content: grape.details.tastingNotes.color)
                        
                        Spacer()
                        
                        LabeledContent(label: "Aroma", content: grape.details.tastingNotes.aroma)
                        
                        Spacer()
                        
                        LabeledContent(label: "Palate", content: grape.details.tastingNotes.palate)
                        
                        Spacer()
                        
                        LabeledContent(label: "Finish", content: grape.details.tastingNotes.finish)
                    }
                }

                SectionBox(title: "Wine Styles") {
                    VStack (alignment: .leading, spacing: 5) {
                        ForEach(grape.details.wineStyles, id: \.self) { style in
                            Text(style)
                        }
                    }
                }

                SectionBox(title: "Grape Summary") {
                    Text(grape.details.grapeSummary)
                    
                }
            }
          
            .navigationTitle(grape.name)
            
            .navigationBarTitleDisplayMode(.inline)
        }
    }
}

struct SectionBox<Content: View>: View {
    let title: String
    @ViewBuilder let content: () -> Content

    var body: some View {
        VStack(alignment: .leading) {
            Text(title)
                .font(.title3) // You can adjust the font size as needed
                .fontWeight(.semibold)
                .padding(.vertical, 8) // Adding vertical padding for better spacing
                .padding(.horizontal)
                .foregroundColor(.lightMaroon)

            content()
                .padding()
                .background(Color.secondary.opacity(0.1))
                .cornerRadius(10)
                .padding(.horizontal)
                .frame(maxWidth: .infinity, alignment: .leading) // Ensure leading alignment
        }
    }
}

struct LabeledContent: View {
    var label: String
    var content: String

    var body: some View {
        VStack(alignment: .leading) {
            Text(label)
                .bold()
            Text(content)
            .frame(maxWidth: .infinity, alignment: .leading) // Ensure leading alignment
        }
    }
}
