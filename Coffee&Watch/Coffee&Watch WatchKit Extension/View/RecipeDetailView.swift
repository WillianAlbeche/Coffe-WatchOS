//
//  RecipeDetailView.swift
//  Coffee&Watch WatchKit Extension
//
//  Created by Luiz Eduardo Mello dos Reis on 06/04/22.
//

import SwiftUI

struct RecipeDetailView: View {
    @Binding var actualRecipe: RecipeDTO
    
    var body: some View {
        VStack{
            HStack(){
                Image(systemName: "cup.and.saucer.fill")
                Text(actualRecipe.title)
                Spacer()
            }
            Divider()
                .background(Color.white)
            ScrollView{
                ForEach(actualRecipe.Ingredients, id: \.self) { ingredient in
                    Text(ingredient)
                }
            }
        }
    }
}

struct RecipeDetailView_Previews: PreviewProvider {
    static var previews: some View {
        RecipeDetailView(actualRecipe: Binding.constant(RecipeDTO(id: 3, title: "SADASDA", complexity: "easy", time: "3 min", Ingredients: ["teste de ingrediente"])))
    }
}
