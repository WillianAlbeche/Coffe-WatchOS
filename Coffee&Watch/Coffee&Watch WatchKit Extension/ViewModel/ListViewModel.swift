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
        var time = 0
        for recipe in recipes {
            
            for ingredient in recipe.ingredients {
                time += ingredient.preparationTime
            }
            
            recipesArray.append(RecipeDTO(id: recipe.id, title: recipe.title, complexity: recipe.complexity.description, time: "\(time) min"))
        }
        
        return recipesArray
        
    }
    
    
    func createData(){
        // Receitas
        recipes.append(Recipe(
            id: 1,
            title: "Café Pelé na Copa",
            complexity: .easy,
            ingredients: [
                Ingredientes.cafePele,
                Ingredientes.agua,
                Ingredientes.acucar]))
        
        // Ingredientes
        ingredients.append(Ingredient(
            id: 1,
            name: "Café Pelé",
            preparation: "Quantidade aqui tb",
            preparationTime: 1))
        
        ingredients.append(Ingredient(
            id: 2,
            name: "Leite",
            preparation: "Aqueça o leite.",
            preparationTime: 4))
        
        ingredients.append(Ingredient(
            id: 3,
            name: "Açúcar",
            preparation: "Adicione açúcar",
            preparationTime: 1))
        
        ingredients.append(Ingredient(
            id: 4,
            name: "Água",
            preparation: "Ferva a água",
            preparationTime: 4))
        
    }

    
    
}

struct RecipeDTO: Identifiable {
    var id: Int
    var title: String
    var complexity:String
    var time: String
}
