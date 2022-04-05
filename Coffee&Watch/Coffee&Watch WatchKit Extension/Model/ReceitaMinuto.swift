//
//  ReceitaMinuto.swift
//  Coffee&Watch WatchKit Extension
//
//  Created by Alex Freitas on 05/04/2022.
//

import Foundation

class ReceitaMinuto {
    func mostraDetalhes(receita: Recipe) {
        print("Título: \(receita.title)")
        print("")
        
        print("Ingredientes:")
        for ingrediente in receita.ingredients {
            print("- \(ingrediente.name)")
        }
        print("")
        
        print("Modo de preparo (views):")
        for ingrediente in receita.ingredients {
            print("::: \(ingrediente.name) :::")
            print("Preparo: \(ingrediente.preparation)")
            print("Durante: \(ingrediente.preparationTime) minutos")
            print("")
        }
    }
}

struct Receitas {
    static var cafePeleCopa = Recipe(
        id: 1,
        title: "Café Pelé na Copa",
        ingredients: [
            Ingredientes.cafePele,
            Ingredientes.agua,
            Ingredientes.acucar],
        accessories: [Acessorios.chaleira])
}

struct Ingredientes {
    static var cafePele = Ingredient(
        id: 1,
        name: "Café Pelé",
        ingredientType: .solid,
        quantity: 3.0,
        unitOfMeasurement: .teaspoons,
        preparation: "Adicione o café.",
        preparationTime: 1)
    
    static var leite = Ingredient(
        id: 2,
        name: "Leite",
        ingredientType: .liquid,
        quantity: 400,
        unitOfMeasurement: .mililiters,
        preparation: "Aqueça o leite.",
        preparationTime: 4)
    
    static var acucar = Ingredient(
        id: 3,
        name: "Açúcar",
        ingredientType: .solid,
        quantity: 1.0,
        unitOfMeasurement: .soupSpoons,
        preparation: "Adicione açúcar",
        preparationTime: 1)
    
    static var agua = Ingredient(
        id: 4,
        name: "Água",
        ingredientType: .liquid,
        quantity: 100.0,
        unitOfMeasurement: .mililiters,
        preparation: "Ferva a água",
        preparationTime: 4)
}

struct Acessorios {
    static var chaleira = Accessory(
        id: 1,
        name: "Chaleira",
        description: "Recipiente metálico, utilizado para ferver a água.")
    static var moedorDeCafe = Accessory(
        id: 2,
        name: "Moedor de Café",
        description: "Serve para moer o café.")
}
