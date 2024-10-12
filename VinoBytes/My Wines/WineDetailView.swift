//
//  WineDetailView.swift
//  VinoDecks
//
//  Created by Logan Rausch on 3/4/24.

import SwiftUI
import UIKit

struct WineDetailView: View {
    @Environment(\.managedObjectContext) private var context
    
    @ObservedObject var wineEntity: WineEntity
    
    @State private var isSharing = false
    @State private var isEditing = false
    
    var body: some View {
        ScrollView {
            VStack(alignment: .leading, spacing: 16) {
                
            
                // Header: Vintage, Producer, Wine Name
                VStack(alignment: .leading, spacing: 5) {
                    Text("\(wineEntity.vintage ?? "Year Unknown") \(wineEntity.producer ?? "Unknown Producer") \(wineEntity.wineName ?? "Unnamed Wine")")
                        .font(.title)
                        .fontWeight(.bold)
                    
                    
                        Text("Grape: \(wineEntity.grape ?? "Not Listed")")
                            .font(.subheadline)
                           
                 
                    
                    if let region = wineEntity.region, !region.isEmpty {
                        Text(region)
                            .font(.subheadline)
                            
                    }
                }
                .padding(.horizontal)
                
                Divider()
                
                // Tasting Notes Section
                CardView {
                    VStack(alignment: .leading, spacing: 12) {
                        Text("Tasting Notes")
                            .font(.headline)
                            .foregroundColor(.primary)
                        
                        HStack(alignment: .top, spacing: 16) {
                            // Sight Information
                            VStack(alignment: .leading, spacing: 4) {
                                Text("Sight:")
                                    .font(.subheadline)
                                    .fontWeight(.semibold)
                                    .foregroundColor(.secondary)
                                Text(wineEntity.sight ?? "N/A")
                                    .font(.body)
                            }
                        }
                        
                        // Smell / Taste Information
                        VStack(alignment: .leading, spacing: 4) {
                            Text("Nose / Palate:")
                                .font(.subheadline)
                                .fontWeight(.semibold)
                                .foregroundColor(.secondary)
                            Text(wineEntity.smellTaste ?? "N/A")
                                .font(.body)
                        }
                    }
                }
                
                Divider()
                
                // Structure Section
                CardView {
                    VStack(alignment: .leading, spacing: 12) {
                        Text("Structure")
                            .font(.headline)
                            .foregroundColor(.primary)
                        
                        HStack(alignment: .top, spacing: 16) {
                            VStack(alignment: .leading, spacing: 4) {
                                if let acid = wineEntity.acid {
                                    Text("Acid:")
                                        .font(.subheadline)
                                        .fontWeight(.semibold)
                                        .foregroundColor(.secondary)
                                    Text(acid)
                                        .font(.body)
                                }
                                
                                if let alcohol = wineEntity.alcohol {
                                    Text("Alcohol:")
                                        .font(.subheadline)
                                        .fontWeight(.semibold)
                                        .foregroundColor(.secondary)
                                    Text(alcohol)
                                        .font(.body)
                                }
                            }
                            Spacer()
                            VStack(alignment: .leading, spacing: 4) {
                                if let body = wineEntity.structureBody {
                                    Text("Body:")
                                        .font(.subheadline)
                                        .fontWeight(.semibold)
                                        .foregroundColor(.secondary)
                                    Text(body)
                                        .font(.body)
                                }
                                
                                if let sweetness = wineEntity.sweetness {
                                    Text("Sweetness:")
                                        .font(.subheadline)
                                        .fontWeight(.semibold)
                                        .foregroundColor(.secondary)
                                    Text(sweetness)
                                        .font(.body)
                                }
                            }
                        }
                        
                        if wineEntity.wineType == "Red" || wineEntity.wineType == "Orange" || wineEntity.wineType == "Fortified" {
                            if let tannin = wineEntity.tannin {
                                VStack(alignment: .leading, spacing: 4) {
                                    Text("Tannin:")
                                        .font(.subheadline)
                                        .fontWeight(.semibold)
                                        .foregroundColor(.secondary)
                                    Text(tannin)
                                        .font(.body)
                                }
                            }
                        } else {
                            VStack(alignment: .leading, spacing: 4) {
                                Text("Tannin:")
                                    .font(.subheadline)
                                    .fontWeight(.semibold)
                                    .foregroundColor(.secondary)
                                Text("Typically minimal for selected type.")
                                    .font(.body)
                                    .italic()
                            }
                        }
                    }
                }
                
                Divider()
                
                // Final Thoughts
                CardView {
                    VStack(alignment: .leading, spacing: 12) {
                        Text("Final Thoughts")
                            .font(.headline)
                        Text(wineEntity.finalThoughts ?? "No additional thoughts.")
                            .font(.body)
                            .padding(.bottom)
                    }
                }
                
                // Rating
                VStack(alignment: .leading, spacing: 8) {
                    Text("Rating")
                        .font(.headline)
                    StarRatingDisplayView(rating: Int(wineEntity.rating))
                }
                .padding(.horizontal)
                
                Divider()
                
                // Wine Image
                if let imageData = wineEntity.imageData, let uiImage = UIImage(data: imageData) {
                    Image(uiImage: uiImage)
                        .resizable()
                        .scaledToFit()
                        .frame(maxWidth: .infinity)
                        .cornerRadius(10)
                        .shadow(radius: 5)
                        .padding(.horizontal)
                }
                
            }
            .padding(.vertical)
        }
        .navigationTitle("Wine Details")
        .toolbar {
            ToolbarItem(placement: .navigationBarTrailing) {
                Button("Edit") {
                    isEditing = true
                }
            }
        }
        .sheet(isPresented: $isEditing) {
            NavigationView {
                WineFormView(wineEntity: wineEntity)
            }
            .preferredColorScheme(.light) // Apply light mode to the entire view
        }
        
    }
}
