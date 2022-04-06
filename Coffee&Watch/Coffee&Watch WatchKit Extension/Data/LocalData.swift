//
//  LocalData.swift
//  Coffee&Watch WatchKit Extension
//
//  Created by Alex Freitas on 06/04/2022.
//

import Foundation

struct LocalData {
    static var recipes: [Recipe] = [
        Recipe(
            id: 0,
            title: "Café Pelé na Copa",
            complexity: .easy,
            ingredients: [ingredients[0], ingredients[1], ingredients[2]]),
        Recipe(
            id: 1,
            title: "Café Pelé na Copa",
            complexity: .easy,
            ingredients: [ingredients[0], ingredients[1], ingredients[2]]),
        Recipe(
            id: 2,
            title: "Café Pelé na Copa",
            complexity: .easy,
            ingredients: [ingredients[0], ingredients[1], ingredients[2]]),
        Recipe(
            id: 3,
            title: "Espresso",
            complexity: .easy,
            ingredients: [ingredients[1], ingredients[4]]),
        Recipe(
            id: 4,
            title: "Café Pelé na Copa",
            complexity: .easy,
            ingredients: [ingredients[0], ingredients[1], ingredients[2]]),
        Recipe(
            id: 5,
            title: "Café Pelé na Copa",
            complexity: .easy,
            ingredients: [ingredients[0], ingredients[1], ingredients[2]])
        ]
    
    static var ingredients: [Ingredient] = [
        Ingredient(
            id: 0,
            name: "Café Pelé",
            preparation: "Quantidade aqui tb",
            preparationTime: 1),
        Ingredient(
            id: 1,
            name: "Leite",
            preparation: "Aqueça o leite.",
            preparationTime: 4),
        Ingredient(
            id: 2,
            name: "Açúcar",
            preparation: "Adicione açúcar",
            preparationTime: 1),
        Ingredient(
            id: 3,
            name: "Água",
            preparation: "Ferva a água",
            preparationTime: 4),
        Ingredient(
            id: 4,
            name: "Espresso teste",
            preparation: "AAAAAAA",
            preparationTime: 4)
    ]
}
