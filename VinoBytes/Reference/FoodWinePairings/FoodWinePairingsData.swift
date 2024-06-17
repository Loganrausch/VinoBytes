//
//  FoodWinePairingsData.swift
//  VinoBytes
//
//  Created by Logan Rausch on 6/14/24.
//

import Foundation

struct FoodWinePairing: Identifiable {
    let id = UUID()
    let food: String
    let wine: String
    let description: String
}

let foodWinePairingsData = [
    FoodWinePairing(food: "Steak", wine: "Cabernet Sauvignon", description: "Cabernet Sauvignon pairs well with steak due to its bold tannins and dark fruit flavors."),
    FoodWinePairing(food: "Salmon", wine: "Pinot Noir", description: "Pinot Noir is a great match for salmon, offering a balance of acidity and light tannins."),
    FoodWinePairing(food: "Chicken", wine: "Chardonnay", description: "Chardonnay complements chicken dishes with its rich, buttery flavors and moderate acidity."),
    FoodWinePairing(food: "Pasta", wine: "Sangiovese", description: "Sangiovese pairs well with pasta, especially with tomato-based sauces, due to its high acidity and bright fruit flavors."),
    FoodWinePairing(food: "Cheese", wine: "Sauvignon Blanc", description: "Sauvignon Blanc's crisp acidity and citrus notes make it a good match for a variety of cheeses."),
    FoodWinePairing(food: "Seafood", wine: "Riesling", description: "Riesling's acidity and touch of sweetness complement the delicate flavors of seafood."),
    FoodWinePairing(food: "Spicy Food", wine: "Gewürztraminer", description: "Gewürztraminer pairs well with spicy food, offering aromatic and slightly sweet notes to balance the heat."),
    FoodWinePairing(food: "Desserts", wine: "Moscato", description: "Moscato's sweetness and fruity flavors make it a perfect pairing for desserts.")
]
