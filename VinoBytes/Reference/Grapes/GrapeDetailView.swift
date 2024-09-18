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

                SectionBox(title: "Viticultural Characteristics") {
                    VStack(alignment: .leading, spacing: 5) {
                        LabeledContent(label: "Climate", content: grape.details.viticulturalCharacteristics.climate)
                        
                        Spacer()
                        
                        LabeledContent(label: "Soil", content: grape.details.viticulturalCharacteristics.soil)
                        
                        Spacer()
                        
                        LabeledContent(label: "Growing Conditions", content: grape.details.viticulturalCharacteristics.growingConditions)
                    }
                }

                SectionBox(title: "Wine Styles") {
                    VStack (alignment: .leading, spacing: 5) {
                        ForEach(grape.details.wineStyles, id: \.self) { style in
                            Text(style)
                        }
                    }
                }

                SectionBox(title: "Food Pairing") {
                    VStack (alignment: .leading, spacing: 5) {
                        ForEach(grape.details.foodPairing, id: \.self) { pairing in
                            Text(pairing)
                        }
                    }
                }

              //  SectionBox(title: "Notable Producers") {
                //    VStack(alignment: .leading, spacing: 5) {  // Ensures content inside is aligned to the leading edge
                  //      ForEach(grape.details.notableProducers, id: \.self) { producer in
                    //        Text(producer)
                      //          .frame(maxWidth: .infinity, alignment: .leading) // Aligns text to the left
                   //     }
                   // }
               // }

                SectionBox(title: "Other Names") {
                    Text(grape.details.otherNames)
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


struct GrapeDetailView_Previews: PreviewProvider {
    static var previews: some View {
        let agiorgitikoDetails = GrapeDetails(
            origin: "Agiorgitiko, also known as Saint George, is a native grape of Greece, primarily grown in the Nemea region of the Peloponnese. It has a long history and is named after Saint George, the patron saint of the region.",
            countries: Countries(
                primary: ["Greece: Predominantly in the Nemea region and other parts of the Peloponnese and some islands. Agiorgitiko is one of Greece’s most important and widely planted red grape varieties."]
            ),
            tastingNotes: TastingNotes(
                color: "Deep ruby red.",
                aroma: "Red fruit aromas, such as cherry, raspberry, and strawberry, with hints of spices, herbs, and sometimes floral notes like violets.",
                palate: "Medium to full-bodied with balanced acidity and moderate tannins. Flavors of red berries, plums, and a touch of black pepper and vanilla from oak aging.",
                finish: "Smooth, with a lingering fruity and spicy aftertaste."
            ),
            viticulturalCharacteristics: ViticulturalCharacteristics(
                climate: "Thrives in Mediterranean climates with warm, dry summers and mild winters.",
                soil: "Prefers well-drained soils, particularly sandy and clay loams.",
                growingConditions: "Resistant to drought and can adapt to various elevations. Known for its high yield and vigorous growth."
            ),
            wineStyles: [
                "Red Wines: Ranges from fresh, young, and fruity wines to more complex, oak-aged versions.",
                "Rosé Wines: Produced in a lighter style with fresh red fruit flavors and crisp acidity."
            ],
            foodPairing: [
                "Red Wines: Pairs well with grilled meats, lamb, moussaka, and Mediterranean cuisine featuring herbs and spices.",
                "Rosé Wines: Complements lighter dishes like salads, seafood, and poultry."
            ],
            notableProducers: [
                "Gaia Wines",
                "Skouras Winery",
                "Domaine Spiropoulos"
            ],
            otherNames: "Locally known as Agiorgitiko, which means 'Saint George's grape.'",
            grapeSummary: "Agiorgitiko is often compared to Merlot for its versatility and approachable style. It plays a significant role in Greece’s wine production."
        )
        let agiorgitiko = Grape(
            name: "Agiorgitiko",
            details: agiorgitikoDetails,
            imageName: "agiorgitiko",
            iconNames: ["leaf", "drop"]
      )

        GrapeDetailView(grape: agiorgitiko)
    }
}
