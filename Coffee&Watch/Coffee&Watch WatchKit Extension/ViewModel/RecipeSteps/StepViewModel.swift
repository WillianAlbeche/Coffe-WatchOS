//
//  StepViewModel.swift
//  Coffee&Watch WatchKit Extension
//
//  Created by Bárbara Araújo Paim on 06/04/22.
//

import Foundation

class StepViewModel: ObservableObject {
    func getRecipeSteps(recipeId: Int) -> [StepDTO] {
        var stepsDTO: [StepDTO] = []

        guard let recipe = LocalData.recipes.first(where: {$0.id == recipeId}) else {
            print("Error: recipe did not found.")
            return stepsDTO
        }

        let preparation = recipe.preparation

        for step in preparation {
            let stepDTO = StepDTO(preparation: step.0,
                                  preparationTime: step.1, icon: step.2)
            
            stepsDTO.append(stepDTO)
        }

        return stepsDTO
    }
}
