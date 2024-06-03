//
//  GrapeData.swift
//  VinoBytes
//
//  Created by Logan Rausch on 6/2/24.
//

import Foundation

struct GrapeData {
    static let redGrapes: [Grape] = [
        Grape(name: "Aglianico", details: "Aglianico is a black grape variety native to Southern Italy, particularly the regions of Campania and Basilicata. It's known for producing full-bodied wines with high tannins and acidity, which makes it suitable for aging. The grape is often compared to Nebbiolo due to its strong structure and ability to develop complex flavors over time. Typical flavor notes include dark fruits such as plum and blackberry, along with savory elements like leather, smoke, and earthy undertones.", imageName: "aglianico", iconNames: ["leaf", "drop"]),
        Grape(name: "Barbera", details: "Details about Barbera...", imageName: "barbera", iconNames: ["leaf", "drop"]),
        Grape(name: "Cabernet Franc", details: "Details about Cabernet Franc...", imageName: "cabernet_franc", iconNames: ["leaf", "drop"]),
        Grape(name: "Cabernet Sauvignon", details: "Details about Cabernet Sauvignon...", imageName: "cabernet_sauvignon", iconNames: ["leaf", "drop"]),
        Grape(name: "Gamay", details: "Details about Gamay...", imageName: "gamay", iconNames: ["leaf", "drop"]),
        Grape(name: "Grenache / Garnacha", details: "Details about Grenache / Garnacha...", imageName: "grenache_garnacha", iconNames: ["leaf", "drop"]),
        Grape(name: "Malbec", details: "Details about Malbec...", imageName: "malbec", iconNames: ["leaf", "drop"]),
        Grape(name: "Merlot", details: "Details about Merlot...", imageName: "merlot", iconNames: ["leaf", "drop"]),
        Grape(name: "Montepucliano", details: "Details about Montepucliano...", imageName: "montepucliano", iconNames: ["leaf", "drop"]),
        Grape(name: "Nebbiolo", details: "Details about Nebbiolo...", imageName: "nebbiolo", iconNames: ["leaf", "drop"]),
        Grape(name: "Nerello Mascalese", details: "Details about Nerello Mascalese...", imageName: "nerello_mascalese", iconNames: ["leaf", "drop"]),
        Grape(name: "Nero D'Avola", details: "Details about Nero D'Avola...", imageName: "nero_d_avola", iconNames: ["leaf", "drop"]),
        Grape(name: "Pinot Noir", details: "Details about Pinot Noir...", imageName: "pinot_noir", iconNames: ["leaf", "drop"]),
        
        
        Grape(name: "Sangiovese", details: """
        Sangiovese is a red Italian wine grape variety that derives its name from the Latin sanguis Jovis, "the blood of Jupiter". Sangiovese wines have a characteristic aroma of cherries, strawberries, and prunes with floral and earthy notes. It is the main grape used in the production of Chianti, Brunello di Montalcino, and Vino Nobile di Montepulciano.
        """, imageName: "sangiovese", iconNames: ["leaf", "drop"]),
       
        
        Grape(name: "Syrah / Shiraz", details: "Details about Syrah / Shiraz...", imageName: "syrah_shiraz", iconNames: ["leaf", "drop"]),
        Grape(name: "Tempranillo", details: "Details about Tempranillo...", imageName: "tempranillo", iconNames: ["leaf", "drop"]),
        Grape(name: "Zinfandel / Primitivo", details: "Details about Zinfandel / Primitivo...", imageName: "zinfandel_primitivo", iconNames: ["leaf", "drop"])
    ]
    
    static let whiteGrapes: [Grape] = [
        Grape(name: "Albarino", details: "Details about Albarino...", imageName: "albarino", iconNames: ["leaf", "drop"]),
        Grape(name: "Chardonnay", details: "Details about Chardonnay...", imageName: "chardonnay", iconNames: ["leaf", "drop"]),
        Grape(name: "Chenin Blanc", details: "Details about Chenin Blanc...", imageName: "chenin_blanc", iconNames: ["leaf", "drop"]),
        Grape(name: "Gewurztraminer", details: "Details about Gewurztraminer...", imageName: "gewurztraminer", iconNames: ["leaf", "drop"]),
        Grape(name: "Pinot Gris / Pinot Grigio", details: "Details about Pinot Gris / Pinot Grigio...", imageName: "pinot_gris_pinot_grigio", iconNames: ["leaf", "drop"]),
        Grape(name: "Riesling", details: "Details about Riesling...", imageName: "riesling", iconNames: ["leaf", "drop"]),
        Grape(name: "Sauvignon Blanc", details: "Details about Sauvignon Blanc...", imageName: "sauvignon_blanc", iconNames: ["leaf", "drop"]),
        Grape(name: "Semillon", details: "Details about Semillon...", imageName: "semillon", iconNames: ["leaf", "drop"]),
        Grape(name: "Torrontes", details: "Details about Torrontes...", imageName: "torrontes", iconNames: ["leaf", "drop"]),
        Grape(name: "Verdejo", details: "Details about Verdejo...", imageName: "verdejo", iconNames: ["leaf", "drop"]),
        Grape(name: "Viognier", details: "Details about Viognier...", imageName: "viognier", iconNames: ["leaf", "drop"])
    ]
}
