//
//  WineLawData.swift
//  VinoBytes
//
//  Created by Logan Rausch on 6/3/24.
//

import Foundation

struct Classification {
    var name: String
    var description: String
}

struct WineLaw {
    var country: String
    var countryOverview: String
    var classifications: [Classification]
}

struct WineLawData {
    static let laws = [
        WineLaw(
            country: "France",
            countryOverview: "France's wine classification ensures quality and authenticity, highly regulated to reflect local wine-making traditions.",
            classifications: [
                Classification(name: "AOC - Appellation d'Origine Contrôlée", description: "Highest regulation level, guarantees geographical authenticity."),
                Classification(name: "AOP - Appellation d'Origine Protégée", description: "Similar to AOC, aligns with EU standards."),
                Classification(name: "IGP - Indication Géographique Protégée", description: "Less stringent, allows more varietal innovation."),
                Classification(name: "Vin de France", description: "Most flexible, allows blending across regions.")
            ]
        ),
        WineLaw(
            country: "Italy",
            countryOverview: "Italy's wine laws are designed to preserve the tradition and quality of its vast wine regions.",
            classifications: [
                Classification(name: "DOCG - Denominazione di Origine Controllata e Garantita", description: "Highest quality assurance, with strictest regulations."),
                Classification(name: "DOC - Denominazione di Origine Controllata", description: "Ensures wines are produced in specified regions with approved methods."),
                Classification(name: "IGT - Indicazione Geografica Tipica", description: "More flexible, covers wines that don't fit DOC or DOCG rules."),
                Classification(name: "Vino", description: "Simple table wines without geographical indication.")
            ]
        ),
        WineLaw(
            country: "Spain",
            countryOverview: "Spain's classification system emphasizes regionality and traditional practices in winemaking.",
            classifications: [
                Classification(name: "DO - Denominación de Origen", description: "Similar to France's AOC, for wines with regional identity."),
                Classification(name: "DOCa - Denominación de Origen Calificada", description: "Higher tier than DO, with stricter controls."),
                Classification(name: "Vino de Pago", description: "Highest classification, for wines from single estates with unique climates.")
            ]
        ),
        WineLaw(
            country: "Germany",
            countryOverview: "Germany's wine laws focus heavily on the ripeness of grapes and their sugar content at harvest.",
            classifications: [
                Classification(name: "QbA - Qualitätswein bestimmter Anbaugebiete", description: "Quality wines from specific regions, must meet a minimum ripeness level."),
                Classification(name: "Prädikatswein", description: "Premium wines categorized by the sugar levels of the grapes, includes levels like Kabinett, Spätlese."),
                Classification(name: "VDP", description: "A private classification that ranks vineyards by quality.")
            ]
        ),
        WineLaw(
            country: "USA",
            countryOverview: "The USA's wine classification is less about tradition and more about the specific characteristics of each viticultural area.",
            classifications: [
                Classification(name: "AVA - American Viticultural Area", description: "Defines wine regions based on distinguishable geographic features.")
            ]
        ),
        WineLaw(
            country: "Australia",
            countryOverview: "Australian wine law focuses on geographic indications to safeguard the regional integrity of its wines.",
            classifications: [
                Classification(name: "GI - Geographical Indications", description: "Ensures wines come from specific locations and reflect the characteristics of that area.")
            ]
        )
    ]
}
