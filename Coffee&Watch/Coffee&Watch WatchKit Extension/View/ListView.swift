//
//  ListView.swift
//  Coffee&Watch WatchKit Extension
//
//  Created by Felipe Grosze Nipper de Oliveira on 05/04/22.
//

import SwiftUI

struct ListView: View {
    
    var viewModel: ListViewModel = ListViewModel()
    
    @State var recipes: [RecipeDTO] = []
    
    var body: some View {
        NavigationView{
            List(recipes) { recipe in
                NavigationLink(destination: RecipeDetailView(actualRecipe: $recipes[recipe.id])) {
                    ListItemView(recipe: recipe)
                    
                }
            }
            .listStyle(.carousel)
            .onAppear(){
                recipes = viewModel.getRecipes()
            }
        }
    }
}

struct ListView_Previews: PreviewProvider {
    static var previews: some View {
        ListView()
    }
}
