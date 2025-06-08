
import Foundation

struct Grape: Identifiable {
    let id = UUID() // Unique identifier for each grape
    let name: String
    let details: GrapeDetails
}

struct GrapeDetails {
    let origin: String
    let countries: Countries
    let tastingNotes: TastingNotes
    let wineStyles: [String]
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
