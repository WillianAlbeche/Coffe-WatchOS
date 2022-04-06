//
//  ListViewModel.swift
//  Coffee&Watch WatchKit Extension
//
//  Created by Felipe Grosze Nipper de Oliveira on 05/04/22.
//

import Foundation

class ListViewModel{
    
    private var recipes: [Recipe] = LocalData.recipes
    
    func getRecipes() -> [RecipeDTO] {
        var recipesArray: [RecipeDTO] = []
        
        for recipe in recipes {
            var time = 0
            var recipesMessage: [String] = []
            
            for ingredient in recipe.ingredients {
                time += ingredient.preparationTime
                recipesMessage.append("\(ingredient.preparation)")
            }
            recipesArray.append(RecipeDTO(id: recipe.id, title: recipe.title, complexity: recipe.complexity.description, time: "\(time) min", Ingredients: recipesMessage))
        }
        
        return recipesArray
    }
}
