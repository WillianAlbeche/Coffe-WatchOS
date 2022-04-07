//
//  StepViewModel.swift
//  Coffee&Watch WatchKit Extension
//
//  Created by Bárbara Araújo Paim on 06/04/22.
//

import Foundation

class StepViewModel: ObservableObject {

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
    
    func getRecipeSteps(recipeId: Int) -> [StepDTO] {
        var stepsDTO: [StepDTO] = []

        guard let recipe = LocalData.recipes.first(where: {$0.id == recipeId}) else {
            print("Error: recipe did not found.")
            return stepsDTO
        }

        let preparation = recipe.preparation

        for step in preparation {
            let stepDTO = StepDTO(preparation: step.0,
                                  preparationTime: step.1)
            
            stepsDTO.append(stepDTO)
        }

        return stepsDTO
    }
}
