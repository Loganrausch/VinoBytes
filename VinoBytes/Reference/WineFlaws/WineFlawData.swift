//
//  WineFlawData.swift
//  VinoBytes
//
//  Created by Logan Rausch on 6/14/24.
//

import Foundation

struct WineFlaw: Identifiable {
    let id = UUID()
    let name: String
    let description: String
}

let wineFlawData = [
    WineFlaw(name: "Oxidation", description: "Oxidation occurs when wine is exposed to oxygen for too long, resulting in a loss of color and flavor."),
    WineFlaw(name: "Cork Taint (TCA)", description: "Cork taint is caused by the presence of TCA, which gives the wine a musty, moldy aroma and flavor."),
    WineFlaw(name: "Volatile Acidity", description: "Volatile acidity is the presence of acetic acid and ethyl acetate, which give the wine a vinegar-like aroma and taste."),
    WineFlaw(name: "Brettanomyces", description: "Brettanomyces is a type of yeast that can cause off-flavors and aromas, such as barnyard, medicinal, or metallic notes."),
    WineFlaw(name: "Reduction", description: "Reduction occurs when wine lacks oxygen, resulting in sulfurous aromas like rotten eggs or burnt rubber."),
    WineFlaw(name: "Heat Damage", description: "Heat damage can cause the wine to age prematurely, leading to cooked or stewed fruit flavors."),
    WineFlaw(name: "Lightstrike", description: "Lightstrike happens when wine is exposed to light, resulting in off-flavors such as wet cardboard or damp wool."),
    WineFlaw(name: "Microbial Contamination", description: "Microbial contamination can occur from bacteria or wild yeast, leading to spoilage and off-flavors.")
]
