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
                Image(systemName: actualRecipe.imageName)
                    .resizable()
                    .foregroundColor(Color(red: 0.9803921568627451, green: 0.8745098039215686, blue: 0.4745098039215686))
                    .frame(width: 30, height: 30)
                    
                Text(actualRecipe.title)
                    .foregroundColor(Color(red: 0.9803921568627451, green: 0.8745098039215686, blue: 0.4745098039215686))
                    //.frame(width: 150, alignment: .leading)
                Spacer()
                            }
            .padding(.leading ,5)
            Rectangle()
                .cornerRadius(3.5)
                .frame(width: 195, height: 3)
                .foregroundColor(Color(red: 0.9803921568627451, green: 0.8745098039215686, blue: 0.4745098039215686))
                
            ScrollView{
                VStack(alignment: .leading){
                    ForEach(actualRecipe.ingredients, id: \.self) { ingredient in
                        Text(ingredient)
                            .multilineTextAlignment(.leading)
                        Spacer()
                        
                    }
                    
                }
                .padding(.leading ,15)
                VStack(alignment: .center) {
                    NavigationLink(destination: StepView(viewModel: StepViewModel(), recipeId: actualRecipe.id)) {
                        Text("Prepare")
                    }
                    .foregroundColor(Color(red: 0.9803921568627451, green: 0.8745098039215686, blue: 0.4745098039215686))
                }
            }
            
        }
    }
}

struct RecipeDetailView_Previews: PreviewProvider {
    static var previews: some View {
        RecipeDetailView(actualRecipe: Binding.constant(RecipeDTO(id: 3, title: "SADASDA", imageName: "cup.and.saucer.fill", complexity: "easy", time: "3 min", ingredients: ["teste de ingrediente"])))
    }
}
