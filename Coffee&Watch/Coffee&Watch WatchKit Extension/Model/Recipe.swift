//
//  Recipe.swift
//  Coffee&Watch WatchKit Extension
//
//  Created by Bárbara Araújo Paim  on 04/04/22.
//

import Foundation

struct Recipe {
    var id: Int
    var title: String
    var complexity: Complexity
    var ingredients: [Ingredient] = []
}

struct Ingredient {
    var id: Int
    var name: String
    var preparation: String
    var preparationTime: Int
}

enum Complexity {
    case easy
    case medium
    case difficult
}
