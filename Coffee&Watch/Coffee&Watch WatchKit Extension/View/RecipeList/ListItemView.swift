//
//  ListItemView.swift
//  Coffee&Watch WatchKit Extension
//
//  Created by Felipe Grosze Nipper de Oliveira on 05/04/22.
//

import SwiftUI

struct ListItemView: View {
    
    @State var recipe: RecipeDTO
    
    var body: some View {
        VStack(spacing: 33) {
            HStack{
                Text(recipe.title)
                Spacer()
            }
            HStack{
                Text(recipe.time)
                Spacer()
                Text(recipe.complexity)
            }
        }
        .padding(.horizontal)
    }
}

struct ListItemView_Previews: PreviewProvider {
    static var previews: some View {
        ListItemView(recipe: RecipeDTO(id: 0, title: "teste", complexity: "ppp", time: "10 min", ingredients: ["3 tablespoons of coffee granules"]))
    }
}
