
import Foundation

struct Grape: Identifiable {
    let id = UUID() // Unique identifier for each grape
    let name: String
    let details: GrapeDetails
    let imageName: String
    let iconNames: [String]
}

struct GrapeDetails {
    let origin: String
    let countries: Countries
    let tastingNotes: TastingNotes
    let viticulturalCharacteristics: ViticulturalCharacteristics
    let wineStyles: [String]
    let foodPairing: [String]
    let notableProducers: [String]
    let otherNames: String
    let grapeSummary: String
}

struct Countries {
    let primary: [String]
}

struct TastingNotes {
    let color: String
    let aroma: String
    let palate: String
    let finish: String
}

struct ViticulturalCharacteristics {
    let climate: String
    let soil: String
    let growingConditions: String
}
