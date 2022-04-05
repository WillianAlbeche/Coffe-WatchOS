//
//  Recipes.swift
//  Coffee&Watch WatchKit Extension
//
//  Created by Bárbara Araújo Paim  on 04/04/22.
//

import Foundation

struct Recipe: Codable {
    var id: Int
    var title: String
    var ingredients: [Ingredient] = []
    var accessories: [Accessory] = []
}

struct Ingredient: Codable {
    var id: Int
    var name: String
    var ingredientType: IngredientType
    var quantity: Double
    var unitOfMeasurement: IngredientUnitOfMeasurement
    var preparation: String
    var preparationTime: Int
}

// não sei se seria necessário mais o IngredientType
enum IngredientType: Codable {
    case liquid
    case solid
}

enum IngredientUnitOfMeasurement: Codable {
    case grams
    case mililiters
    case teaspoons
    case soupSpoons
}

struct Accessory: Codable {
    var id: Int
    var name: String
    var description: String
}
