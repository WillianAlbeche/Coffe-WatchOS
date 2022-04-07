//
//  StepViewModel.swift
//  Coffee&Watch WatchKit Extension
//
//  Created by Bárbara Araújo Paim on 06/04/22.
//

import Foundation

class StepViewModel: ObservableObject {
    @Published var stepsDTO: [StepDTO] = []
    
//    func getRecipe (id: Int)  {
//        addStep(recipe: LocalData.recipes[id])
//    }
//
//    func addStep(recipe: Recipe) {
//        var ingredients: [Ingredient]
//
//        ingredients = recipe.ingredients
//
//        for ingredient in ingredients {
//            stepsDTO.append(StepDTO(preparation: ingredient.preparation, preparationTime: ingredient.preparationTime))
//        }
//    }
    
    func findRecipeById(id: Int) {
        if let recipe = LocalData.recipes.first(where: {$0.id == id}) {
            getRecipeSteps(recipe: recipe)
        } else {
            print("Error")
        }
    }
    
    private func getRecipeSteps(recipe: Recipe) {
        let preparation = recipe.preparation
        
        for step in preparation {
            let stepDTO = StepDTO(preparation: step.0,
                                  preparationTime: step.1)
            
            stepsDTO.append(stepDTO)
        }
    }
}
