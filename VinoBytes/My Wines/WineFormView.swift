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
    @Environment(\.managedObjectContext) private var context

    var wineEntity: WineEntity?

    @State private var producer: String = ""
    @State private var wineName: String = ""
    @State private var region: String = ""
    @State private var grape: String = ""
    @State private var vintage: String = ""
    @State private var isNonVintage: Bool = false
    @State private var rating: Int = 0
    @State private var sight: String = ""
    @State private var smellTaste: String = ""
    @State private var acid: String = ""
    @State private var alcohol: String = ""
    @State private var structureBody: String = ""
    @State private var sweetness: String = ""
    @State private var tannin: String = ""
    @State private var finalThoughts: String = ""
    @State private var selectedImage: UIImage?
    @State private var isShowingImagePicker = false

    init(wineEntity: WineEntity? = nil) {
        self.wineEntity = wineEntity
        if let wineEntity = wineEntity {
            _producer = State(initialValue: wineEntity.producer ?? "")
            _wineName = State(initialValue: wineEntity.wineName ?? "")
            _region = State(initialValue: wineEntity.region ?? "")
            _grape = State(initialValue: wineEntity.grape ?? "")
            // Adjust vintage initialization to handle NV represented by 0
            _vintage = State(initialValue: wineEntity.vintage ?? "")
            _isNonVintage = State(initialValue: wineEntity.vintage == "NV")
            _rating = State(initialValue: Int(wineEntity.rating))  // Convert Int16 to Int
            _sight = State(initialValue: wineEntity.sight ?? "")
            _smellTaste = State(initialValue: wineEntity.smellTaste ?? "")
            _acid = State(initialValue: wineEntity.acid ?? "")
            _alcohol = State(initialValue: wineEntity.alcohol ?? "")
            _structureBody = State(initialValue: wineEntity.structureBody ?? "")
            _sweetness = State(initialValue: wineEntity.sweetness ?? "")
            _tannin = State(initialValue: wineEntity.tannin ?? "")
            _finalThoughts = State(initialValue: wineEntity.finalThoughts ?? "")
            _selectedImage = State(initialValue: wineEntity.imageData != nil ? UIImage(data: wineEntity.imageData!) : nil)
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
                                            .accentColor(Color.blue)
                                    }
                                }
                            }
                            
            Section(header: Text("Vintage Selection")) {
                            HStack {
                                Button("NV") {
                                    vintage = "NV"
                                    isNonVintage = true
                                }
                                .foregroundColor(isNonVintage ? Color("Maroon") : .gray)
                                .padding()
                                .background(isNonVintage ? Color("Maroon").opacity(0.2) : Color.clear)
                                .cornerRadius(5)
                                .overlay(
                                    RoundedRectangle(cornerRadius: 5)
                                        .stroke(isNonVintage ? Color("Maroon") : Color.clear, lineWidth: 2)
                                )
                                .disabled(isNonVintage)

                                Button("Vintage") {
                                    isNonVintage = false
                                    vintage = ""  // Clear the vintage or set it to a default value
                                }
                                .foregroundColor(!isNonVintage ? Color("Maroon") : .gray)
                                .padding()
                                .background(!isNonVintage ? Color("Maroon").opacity(0.2) : Color.clear)
                                .cornerRadius(5)
                                .overlay(
                                    RoundedRectangle(cornerRadius: 5)
                                        .stroke(!isNonVintage ? Color("Maroon") : Color.clear, lineWidth: 2)
                                )
                                .disabled(!isNonVintage)
                            }
                            if !isNonVintage {
                                TextField("Enter Vintage Year", text: $vintage)
                                    .keyboardType(.default)  // Allow alphanumeric input
                            }
                        }
            .accentColor(Color.black) // Set cursor color to system gray
            
                    
            
            Section(header: Text("Wine Details")) {
                TextField("Producer", text: $producer)
                TextField("Wine Name", text: $wineName)
                TextField("Region", text: $region)
                TextField("Grape", text: $grape)
            }
            .accentColor(Color(UIColor.systemGray)) // Applying the accent color to all TextField elements in the section
            
            Section(header: Text("Sight")) {
                TextEditor(text: $sight)
                    .accentColor(Color(UIColor.systemGray)) // Set cursor color to system gray
                    .frame(minHeight: 100, maxHeight: 200) // Set minimum and maximum height
                    .cornerRadius(8)
            }
            
            Section(header: Text("Smell / Taste")) {
                TextEditor(text: $smellTaste)
                    .accentColor(Color(UIColor.systemGray)) // Set cursor color to system gray
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
                            StarRatingView(rating: $rating)
                        }
            
            Section(header: Text("Final Thoughts")) {
                TextEditor(text: $finalThoughts)
                    .accentColor(Color(UIColor.systemGray)) // Set cursor color to system gray
                    .frame(minHeight: 100, maxHeight: 200) // Set minimum and maximum height
                    .cornerRadius(8)
            }
            
            Button("Save") {
                saveWine()
            }
            .foregroundColor(.blue) // Sets the text color to white
            .navigationBarTitle(wineEntity != nil ? "Edit Wine" : "Add Wine")
            .toolbar {
                ToolbarItem(placement: .navigationBarLeading) {
                    Button("Cancel") {
                        presentationMode.wrappedValue.dismiss()
                    }
                }
            }
        }
        .sheet(isPresented: $isShowingImagePicker, onDismiss: loadImage) {
            ImagePicker(selectedImage: $selectedImage)
        }
    }

    private func saveWine() {
        let wineToSave = wineEntity ?? WineEntity(context: context)
        wineToSave.producer = producer
        wineToSave.wineName = wineName
        wineToSave.region = region
        wineToSave.grape = grape
        wineToSave.vintage = vintage
        wineToSave.rating = Int16(rating)
        wineToSave.sight = sight
        wineToSave.smellTaste = smellTaste
        wineToSave.acid = acid
        wineToSave.alcohol = alcohol
        wineToSave.structureBody = structureBody
        wineToSave.sweetness = sweetness
        wineToSave.tannin = tannin
        wineToSave.finalThoughts = finalThoughts
        wineToSave.imageData = selectedImage?.jpegData(compressionQuality: 1.0)

                    do {
                        try context.save()
                        presentationMode.wrappedValue.dismiss()
                    } catch {
                        print("Failed to save wine: \(error)")
                    }
                }

                private func loadImage() {
                    guard let selectedImage = selectedImage else { return }
                    wineEntity?.imageData = selectedImage.jpegData(compressionQuality: 1.0)
                }
            }
    
    
    struct WineFormView_Previews: PreviewProvider {
        static var previews: some View {
            WineFormView()
        }
    }

