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
            .padding(.leading ,5)
            Divider()
                .background(Color.white)
            ScrollView{
                VStack(alignment: .leading){
                    ForEach(actualRecipe.ingredients, id: \.self) { ingredient in
                        Text(ingredient)
                            .multilineTextAlignment(.leading)
                    }
                    NavigationLink(destination: StepView(viewModel: StepViewModel(), recipeId: actualRecipe.id)) {
                        Text("Prepare")
                    }
                }
            }
            .padding(.leading ,15)
        }
    }
}

struct RecipeDetailView_Previews: PreviewProvider {
    static var previews: some View {
        RecipeDetailView(actualRecipe: Binding.constant(RecipeDTO(id: 3, title: "SADASDA", imageName: "cup.and.saucer.fill", complexity: "easy", time: "3 min", ingredients: ["teste de ingrediente"])))
    }
}
