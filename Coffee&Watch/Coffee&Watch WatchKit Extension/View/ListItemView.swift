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
        VStack{
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
    }
}

struct ListItemView_Previews: PreviewProvider {
    static var previews: some View {
        ListItemView(recipe: RecipeDTO(title: "teste", complexity: "easy", time: "10 min"))
    }
}
