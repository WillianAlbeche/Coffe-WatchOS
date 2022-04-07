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
            var preparationTime = 0
            
            for preparationItem in recipe.preparation {
                preparationTime += preparationItem.1
            }
            
            recipesArray.append(RecipeDTO(id: recipe.id,
                                          title: recipe.title, imageName: recipe.imageName,
                                          complexity: recipe.complexity.description,
                                          time: "\(preparationTime) min",
                                          ingredients: recipe.ingredients))
        }
        
        return recipesArray
    }
}
