//
//  WineFormView.swift
//  VinoDecks
//
//  Created by Logan Rausch on 3/2/24.
//

import SwiftUI
import PhotosUI
import CoreData

struct WineFormView: View {
    @Environment(\.dismiss) private var dismiss
    @Environment(\.managedObjectContext) private var envContext
    @EnvironmentObject private var refresh: RefreshNotifier

    @StateObject private var vm: WineFormViewModel

    // Allows use for both Add & Edit
    init(wineEntity: WineEntity? = nil) {
        _vm = StateObject(wrappedValue: WineFormViewModel(
            entity: wineEntity,
            context: PersistenceController.shared.container.viewContext,
            refresh: RefreshNotifier()
        ))
    }

    var body: some View {
        Form {
            wineTypeSection
            vintageSection
            wineDetailsSection
            notesSection(title: "Sight", text: $vm.sight)
            notesSection(title: "Nose / Palate", text: $vm.smellTaste)
            structureSection
            ratingSection
            notesSection(title: "Final Thoughts", text: $vm.finalThoughts)
            imageSection
        }
        .navigationBarTitle(vm.existingEntity == nil ? "Add Wine" : "Edit Wine",
                            displayMode: .inline)
        .toolbar {
            ToolbarItem(placement: .navigationBarTrailing) {
                Button("Save", action: vm.save).font(.headline)
            }
        }
        .accentColor(.latte)
        .alert(isPresented: $vm.showingAlert) {
            Alert(title: Text("Required Field Missing"),
                  message: Text(vm.alertMessage),
                  dismissButton: .default(Text("OK")))
        }
        .sheet(isPresented: $vm.isShowingImagePicker) {
            ImagePicker(selectedImage: $vm.selectedImage)
        }
        .onChange(of: vm.didSave) { _, newValue in
            if newValue { dismiss() }
        }
        .environmentObject(refresh)    // pass the shared notifier
    }

    // MARK: - Sections (UI identical to original)

    private var wineTypeSection: some View {
        Section(header: Text("Wine Type")) {
            Picker("Select Wine Type", selection: $vm.wineType) {
                ForEach(["Dessert","Fortified","Orange","Red","Rosé","Sparkling","White"], id:\.self) {
                    Text($0).tag($0)
                }
            }
            .pickerStyle(.menu)
            .accentColor(.black)
        }
    }

    private var vintageSection: some View {
        Section(header: Text("Vintage Selection")) {
            HStack {
                Button("NV") { vm.toggleNV(isNV: true) }
                    .vintageButtonStyle(active: vm.isNonVintage)

                Button("Vintage") { vm.toggleNV(isNV: false) }
                    .vintageButtonStyle(active: !vm.isNonVintage)
            }
            if !vm.isNonVintage {
                TextField("Enter Vintage Year", text: $vm.vintage)
                    .keyboardType(.default)
            }
        }
        .accentColor(.burgundy)
    }

    private var wineDetailsSection: some View {
        Section(header: Text("Wine Details")) {
            TextField("Producer", text: $vm.producer)
            TextField("Wine Name", text: $vm.wineName)
            TextField("Region",   text: $vm.region)
            TextField("Grape",    text: $vm.grape)
        }
        .accentColor(.burgundy)
    }

    private func notesSection(title: String, text: Binding<String>) -> some View {
        Section(header: Text(title)) {
            TextEditor(text: text)
                .accentColor(.burgundy)
                .frame(minHeight: 100, maxHeight: 200)
                .cornerRadius(8)
        }
    }

    private var structureSection: some View {
        Section(header: Text("Structure")) {
            VStack(alignment: .leading) {
                PickerRow(label: "Acid",    binding: $vm.acid,
                          options: ["Low","Med-","Med","Med+","High"])
                PickerRow(label: "Alcohol", binding: $vm.alcohol,
                          options: ["Low","Med-","Med","Med+","High"])
                PickerRow(label: "Body",    binding: $vm.body,
                          options: ["Light","Med-","Med","Med+","Full"])
                PickerRow(label: "Sweetness",   binding: $vm.sweetness,
                          options: ["B. Dry","Dry","Off-Dry","Sweet","V. Sweet"])

                Text("Tannin").font(.system(size: 13))
                if vm.wineType == "Red" || vm.wineType == "Orange" || vm.wineType == "Fortified" {
                    Picker("", selection: $vm.tannin) {
                        ForEach(["Low","Med-","Med","Med+","High"], id:\.self) { Text($0) }
                    }
                    .pickerStyle(.segmented)
                    .padding(.bottom, 10)
                } else {
                    Text("Typically minimal for selected type.")
                        .foregroundColor(.gray)
                }
            }
        }
    }

    private var ratingSection: some View {
        Section(header: Text("Rating")) {
            StarRatingView(rating: $vm.rating)
        }
    }

    private var imageSection: some View {
        Section(header: Text("Wine Image")) {
            Button { vm.isShowingImagePicker = true } label: {
                if let img = vm.selectedImage {
                    Image(uiImage: img).resizable().scaledToFit()
                } else {
                    Text("Select Image").accentColor(.blue)
                }
            }
        }
    }
}

// MARK: - Small helpers

private struct PickerRow: View {
    let label: String
    @Binding var binding: String
    let options: [String]

    var body: some View {
        Text(label).font(.system(size: 13))
        Picker(label, selection: $binding) {
            ForEach(options, id: \.self) { Text($0).tag($0) }
        }
        .pickerStyle(.segmented)
        .padding(.bottom, 10)
    }
}

private extension Button {
    func vintageButtonStyle(active: Bool) -> some View {
        self
            .foregroundColor(active ? Color("Burgundy") : .gray)
            .padding(8)
            .background(active ? Color("Burgundy").opacity(0.2) : Color.clear)
            .cornerRadius(5)
            .overlay(
                RoundedRectangle(cornerRadius: 5)
                    .stroke(active ? Color("Burgundy") : .clear, lineWidth: 2)
            )
            .disabled(active)
    }
}
