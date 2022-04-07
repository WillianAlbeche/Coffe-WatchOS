//
//  StepViewModel.swift
//  Coffee&Watch WatchKit Extension
//
//  Created by Alex Freitas on 06/04/2022.
//

import Foundation

class StepViewModel: ObservableObject {
    
    @Published var stepsDTO: [StepDTO] = []
    
    func getRecipe (id: Int)  {
        addStep(recipe: LocalData.recipes[id])
    }
    
    func addStep(recipe: Recipe) {
        var ingredients: [Ingredient]
        
        ingredients = recipe.ingredients
        
        for ingredient in ingredients {
            stepsDTO.append(StepDTO(name: ingredient.name, preparation: ingredient.preparation, preparationTime: ingredient.preparationTime))
        }
    }
}
