//
//  RegionData.swift
//  VinoBytes
//
//  Created by Logan Rausch on 6/3/24.
//

import Foundation

struct Region {
    let name: String
    let details: String
    let subregions: [String]
    let climate: String
    let soil: [String]
    let keyWineStyles: String
    let topProducers: [String]
    let imageName: String // New property
    let iconNames: [String] // New property
}

struct Country {
    let name: String
    let regions: [Region]
}

struct RegionData {
    static let countries: [Country] = [
        
        //FRANCE
        
        Country(name: "France", regions: [
                    
            Region(
                        name: "Bordeaux",
                        details: "Bordeaux is renowned for its storied winemaking history and pivotal role in the global wine market, with a heritage that traces back to Roman times. The region is geographically divided by the Gironde Estuary into the Left Bank and Right Bank, cultivating diverse wine styles influenced by their distinct terroirs. The Left Bank is noted for structured, tannic wines from Cabernet Sauvignon, whereas the Right Bank offers softer, Merlot-based wines that are often more approachable at a younger age.",
                        subregions: [
                            "Left Bank: Famous for Cabernet Sauvignon-dominant wines with notable appellations including Médoc, Margaux, Pauillac, Saint-Julien, and Saint-Estèphe.",
                            "Right Bank: Dominated by Merlot, this area features celebrated regions like Saint-Émilion and Pomerol.",
                            "Graves (Left Bank): Distinct for both its sophisticated red wines and premium dry white wines predominantly from Sauvignon Blanc and Sémillon. Sauternes, a subregion within Graves, is globally acclaimed for its exceptional sweet wines, crafted from grapes affected by Botrytis cinerea, or noble rot, which concentrates their sugars and flavors."
                        ],
                        climate: "Bordeaux's maritime climate, moderated by the Atlantic Ocean and the Gironde Estuary, ensures a temperate environment ideal for viticulture, with a long growing season critical for the complex maturation of grapes.",
                        soil: [
                            "Deep gravel of the Left Bank, conducive to Cabernet Sauvignon.",
                            "Clay and limestone of the Right Bank, which supports Merlot cultivation.",
                            "Unique mix in Graves, contributing to the diverse wine styles it produces."
                        ],
                        keyWineStyles: "The region is celebrated for its red blends based on Cabernet Sauvignon and Merlot, known for their depth and complexity. Bordeaux also boasts of the dry white wines of Graves and the sublime sweet wines of Sauternes, each expressing a distinct palate profile reflective of their terroir.",
                        topProducers: [
                            "Château Margaux (Margaux)",
                            "Château Latour (Pauillac)",
                            "Château Haut-Brion (Graves)",
                            "Château Cheval Blanc (Saint-Émilion)",
                            "Château Pétrus (Pomerol)",
                            "Château d'Yquem (Sauternes)"
                        ],
                        imageName: "bordeaux_image",
                        iconNames: ["leaf", "drop"]
                    ),
                    Region(
                        name: "Burgundy",
                        details: "Burgundy, or Bourgogne, is celebrated for its complex terroir and the climats system, a UNESCO World Heritage site that precisely delineates its vineyards. This historical wine region is renowned for its exceptional Chardonnay and Pinot Noir wines, produced from a tapestry of closely spaced vineyards that express subtle variations in flavor and character.",
                        subregions: [
                            "• Chablis: Known for its crisp, mineral-driven Chardonnay.",
                            "• Côte de Nuits: The northern part of the Côte d'Or, famous for producing some of the world's finest Pinot Noir wines with appellations like Gevrey-Chambertin and Vosne-Romanée.",
                            "• Côte de Beaune: The southern part of the Côte d'Or, revered for both its exquisite Chardonnay from areas like Puligny-Montrachet and Meursault, and also fine Pinot Noir.",
                            "• Côte Chalonnaise: Producing both red and white wines, with a growing reputation for value and quality.",
                            "• Mâconnais: Located in the southern part of Burgundy, known for its robust Chardonnay wines.",
                            "• Beaujolais: Geographically part of Burgundy but distinct in its wine style, predominantly producing light, fruit-forward red wines from the Gamay grape."
                        ],
                        climate: "Continental, with cold winters and warm summers, promoting a range of wine styles from the various subregions.",
                        soil: [
                            "Chablis: Kimmeridgian limestone rich in marine fossils, lending a distinct minerality to the wines.",
                            "Côte de Nuits: Limestone and marl, with variations in clay content that add complexity and richness to the wines.",
                            "Côte de Beaune: Limestone with higher proportions of marl, producing elegant Chardonnay and structured Pinot Noir.",
                            "Côte Chalonnaise: A mixture of clay and limestone that supports both Chardonnay and Pinot Noir.",
                            "Mâconnais: Predominantly limestone with some areas having a higher clay content, ideal for Chardonnay.",
                            "Beaujolais: Granitic and sandy soils that are perfect for the Gamay grape, contributing to the fresh, fruity character of the wines."
                        ],
                        keyWineStyles: "Famed for its Chardonnay and Pinot Noir, Burgundy also offers unique expressions of Gamay in Beaujolais. The region is known for both its red and white wines that can range from robust and complex to elegant and mineral.",
                        topProducers: [
                            "Domaine de la Romanée-Conti (Côte de Nuits)",
                            "Domaine Leflaive (Puligny-Montrachet)",
                            "Louis Jadot (across Burgundy)",
                            "Domaine Faiveley (Côte Chalonnaise)",
                            "Maison Louis Latour (Côte de Beaune)",
                            "Georges Duboeuf (Beaujolais)"
                        ],
                        imageName: "burgundy_image",
                        iconNames: ["leaf", "drop"]
                    )
                ]
            )
        ]
        }
