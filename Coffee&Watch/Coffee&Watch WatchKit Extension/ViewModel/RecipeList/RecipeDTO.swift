//
//  RecipeDTO.swift
//  Coffee&Watch WatchKit Extension
//
//  Created by Alex Freitas on 06/04/2022.
//

import Foundation

struct RecipeDTO: Identifiable {
    var id: Int
    var title: String
    var complexity: String
    var time: String
    var ingredients: [String]
}
