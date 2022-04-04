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
}

struct Ingredient: Codable {
    var name: String
    var ingredientType: IngredientType
}

enum IngredientType: Codable {
    case liquid
    case solid
}
