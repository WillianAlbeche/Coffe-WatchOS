//
//  ListViewModel.swift
//  Coffee&Watch WatchKit Extension
//
//  Created by Felipe Grosze Nipper de Oliveira on 05/04/22.
//

import Foundation

class ListViewModel{
    
    private var recipes: [Recipe] = []
    private var ingredients: [Ingredient] = []
    
    init() {
        createData()
    }
    
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
    
    
    func createData(){
        
        // Ingredientes
        ingredients.append(Ingredient(
            id: 0,
            name: "Café Pelé",
            preparation: "Quantidade aqui tb",
            preparationTime: 1))
        
        ingredients.append(Ingredient(
            id: 1,
            name: "Leite",
            preparation: "Aqueça o leite.",
            preparationTime: 4))
        
        ingredients.append(Ingredient(
            id: 2,
            name: "Açúcar",
            preparation: "Adicione açúcar",
            preparationTime: 1))
        
        ingredients.append(Ingredient(
            id: 3,
            name: "Água",
            preparation: "Ferva a água",
            preparationTime: 4))
        
        ingredients.append(Ingredient(
            id: 4,
            name: "Espresso teste",
            preparation: "AAAAAAA",
            preparationTime: 4))
        
        
        
        
        
        // Receitas
        recipes.append(Recipe(
            id: 0,
            title: "Café Pelé na Copa",
            complexity: .easy,
            ingredients: [ingredients[0], ingredients[1], ingredients[2]]
            )
        )
        
        recipes.append(Recipe(
            id: 1,
            title: "Café Pelé na Copa",
            complexity: .easy,
            ingredients: [ingredients[0], ingredients[1], ingredients[2]]
            )
        )
        
        recipes.append(Recipe(
            id: 2,
            title: "Café Pelé na Copa",
            complexity: .easy,
            ingredients: [ingredients[0], ingredients[1], ingredients[2]]
            )
        )
        
        recipes.append(Recipe(
            id: 3,
            title: "Espresso",
            complexity: .easy,
            ingredients: [ingredients[1], ingredients[4]]
            )
        )
        
        recipes.append(Recipe(
            id: 4,
            title: "Café Pelé na Copa",
            complexity: .easy,
            ingredients: [ingredients[0], ingredients[1], ingredients[2]]
            )
        )
        
        recipes.append(Recipe(
            id: 5,
            title: "Café Pelé na Copa",
            complexity: .easy,
            ingredients: [ingredients[0], ingredients[1], ingredients[2]]
            )
        )
    }
    
    
    
}

struct RecipeDTO: Identifiable {
    var id: Int
    var title: String
    var complexity:String
    var time: String
    var Ingredients: [String]
}
