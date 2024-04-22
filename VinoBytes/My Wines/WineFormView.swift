//
//  WineFormView.swift
//  VinoDecks
//
//  Created by Logan Rausch on 3/2/24.
//

import Foundation
import SwiftUI
import PhotosUI

struct WineFormView: View {
    @Environment(\.presentationMode) var presentationMode
    @State private var producer: String = ""
    @State private var wineName: String = ""
    @State private var region: String = ""
    @State private var grape: String = ""
    @State private var vintage: Int = 2024
    @State private var rating: String = ""
    @State private var sight: String = ""
    @State private var smellTaste: String = ""
    @State private var acid: String = ""
    @State private var alcohol: String = ""
    @State private var structureBody: String = ""
    @State private var sweetness: String = ""
    @State private var tannin: String = ""
    @State private var selectedImage: UIImage?
    @State private var isShowingImagePicker = false
    @State private var finalThoughts: String = ""

    
    var wine: Wine? // Optional wine for editing
    var addWine: ((Wine) -> Void)? // Optional closure for adding a wine
    var updateWine: ((Wine, @escaping () -> Void) -> Void)?
    var onWineUpdated: (() -> Void)? // Closure to be called after wine is updated
    
    init(wine: Wine? = nil, addWine: ((Wine) -> Void)? = nil, updateWine: ((Wine, @escaping () -> Void) -> Void)? = nil, onWineUpdated: (() -> Void)? = nil) {
        self.wine = wine
        self.addWine = addWine
        self.updateWine = updateWine
        self.onWineUpdated = onWineUpdated
        
        if let wine = wine {
            _producer = State(initialValue: wine.producer)
            _wineName = State(initialValue: wine.wineName)
            _region = State(initialValue: wine.region)
            _grape = State(initialValue: wine.grape)
            _vintage = State(initialValue: wine.vintage)
            _rating = State(initialValue: wine.rating)
            _sight = State(initialValue: wine.sight)
            _smellTaste = State(initialValue: wine.smellTaste)
            _acid = State(initialValue: wine.acid)
            _alcohol = State(initialValue: wine.alcohol)
            _structureBody = State(initialValue: wine.structureBody)
            _sweetness = State(initialValue: wine.sweetness)
            _tannin = State(initialValue: wine.tannin)
            _selectedImage = State(initialValue: wine.image)
            _finalThoughts = State(initialValue: wine.finalThoughts)
        }
    }
    
    var body: some View {
        Form {
            Section(header: Text("Wine Image")) {
                Button(action: {
                    isShowingImagePicker = true
                }) {
                    if let selectedImage = selectedImage {
                        Image(uiImage: selectedImage)
                            .resizable()
                            .scaledToFit()
                    } else {
                        Text("Select Image")
                    }
                }
                .sheet(isPresented: $isShowingImagePicker) {
                    ImagePicker(selectedImage: $selectedImage)
                }
            }
            
            Section(header: Text("Vintage")) {
                Stepper("\(String(vintage))", value: $vintage, in: 1900...2024)
            }
            
            Section(header: Text("Wine Details")) {
                TextField("Producer", text: $producer)
                TextField("Wine Name", text: $wineName)
                TextField("Region", text: $region)
                TextField("Grape", text: $grape)
            }
            
            Section(header: Text("Sight")) {
                TextEditor(text: $sight)
                    .frame(minHeight: 100, maxHeight: 200) // Set minimum and maximum height
                    .cornerRadius(8)
            }
            
            Section(header: Text("Smell / Taste")) {
                TextEditor(text: $smellTaste)
                    .frame(minHeight: 100, maxHeight: 200) // Set minimum and maximum height
                    .cornerRadius(8)
            }
            
            Section(header: Text("Structure")) {
                VStack(alignment: .leading) {
                    Text("Acid").font(.system(size: 13))
                    Picker("Acid", selection: $acid) {
                        Text("Low").tag("Low")
                        Text("Med-").tag("Med-")
                        Text("Med").tag("Med")
                        Text("Med+").tag("Med+")
                        Text("High").tag("High")
                    }
                    .pickerStyle(SegmentedPickerStyle())
                    .accentColor(.red) // Set the accent color to red
                    
                    Text("Alcohol").font(.system(size: 13))
                    Picker("Alcohol", selection: $alcohol) {
                        Text("Low").tag("Low")
                        Text("Med-").tag("Med-")
                        Text("Med").tag("Med")
                        Text("Med+").tag("Med+")
                        Text("High").tag("High")
                    }
                    .pickerStyle(SegmentedPickerStyle())
                    
                    Text("Body").font(.system(size: 13))
                    Picker("Body", selection: $structureBody) {
                        Text("Light").tag("Light")
                        Text("Med-").tag("Med-")
                        Text("Med").tag("Med")
                        Text("Med+").tag("Med+")
                        Text("Full").tag("Full")
                    }
                    .pickerStyle(SegmentedPickerStyle())
                    
                    Text("Sweetness").font(.system(size: 13))
                    Picker("Sweet", selection: $sweetness) {
                        Text("B. Dry").tag("B. Dry")
                        Text("Dry").tag("Dry")
                        Text("Off-Dry").tag("Off-Dry")
                        Text("Sweet").tag("Sweet")
                        Text("V. Sweet").tag("V. Sweet")
                    }
                    .pickerStyle(SegmentedPickerStyle())
                    
                    Text("Tannin").font(.system(size: 13))
                    Picker("Tannin", selection: $tannin) {
                        Text("Low").tag("Low")
                        Text("Med-").tag("Med-")
                        Text("Med").tag("Med")
                        Text("Med+").tag("Med+")
                        Text("High").tag("High")
                    }
                    .pickerStyle(SegmentedPickerStyle())
                }
            }
            
            
            Section(header: Text("Rating")) {
                HStack(spacing: 20) { // Ensure there is space between buttons
                    Button(action: {
                        // This print statement will help you confirm that only this button action is called
                        print("Thumbs Down Pressed")
                        rating = (rating == "Negative") ? "" : "Negative"
                    }) {
                        Image(systemName: "hand.thumbsdown.circle")
                            .resizable()
                            .scaledToFit()
                            .frame(width: 40, height: 40)
                            .foregroundColor(rating == "Negative" ? .red : .gray)
                    }
                    .buttonStyle(PlainButtonStyle()) // Prevent parent styles from affecting this button
                    
                    Button(action: {
                        // This print statement will help you confirm that only this button action is called
                        print("Thumbs Up Pressed")
                        rating = (rating == "Positive") ? "" : "Positive"
                    }) {
                        Image(systemName: "hand.thumbsup.circle")
                            .resizable()
                            .scaledToFit()
                            .frame(width: 40, height: 40)
                            .foregroundColor(rating == "Positive" ? .green : .gray)
                    }
                    .buttonStyle(PlainButtonStyle()) // Prevent parent styles from affecting this button
                }
            }
            
            Section(header: Text("Final Thoughts")) {
                TextEditor(text: $finalThoughts)
                    .frame(minHeight: 100, maxHeight: 200) // Set minimum and maximum height
                    .cornerRadius(8)
            }

            
            
            Button(action: {
                print("Update button clicked")
                let newWine = Wine(
                    id: wine?.id ?? UUID(),
                    producer: producer,
                    wineName: wineName,
                    region: region,
                    grape: grape,
                    vintage: vintage,
                    rating: rating,
                    sight: sight,
                    smellTaste: smellTaste,
                    acid: acid,
                    alcohol: alcohol,
                    structureBody: structureBody,
                    sweetness: sweetness,
                    tannin: tannin,
                    image: selectedImage,
                    finalThoughts: finalThoughts
                )
                
                if wine != nil {
                    updateWine?(newWine) {
                        print("Wine updated")
                        onWineUpdated?()
                        presentationMode.wrappedValue.dismiss()
                    }
                } else {
                    print("Adding new wine")
                    addWine?(newWine)
                    presentationMode.wrappedValue.dismiss()
                }

            }) {
                Text(wine != nil ? "Update Wine" : "Save Wine")
            }
            
            .navigationBarTitle(wine != nil ? "Edit Wine" : "Add a Wine")
            .sheet(isPresented: $isShowingImagePicker) {
                ImagePicker(selectedImage: $selectedImage)
            }
        }
    }
    
    
    struct WineFormView_Previews: PreviewProvider {
        static var previews: some View {
            WineFormView()
        }
    }
}
