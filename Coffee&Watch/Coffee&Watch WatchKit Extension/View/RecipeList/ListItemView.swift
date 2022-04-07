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
        ZStack{
            HStack{
                VStack(alignment:.leading, spacing:9) {
                    Spacer()
                    Image(uiImage: UIImage(named: recipe.imageName) ?? UIImage(systemName: "cup.and.saucer.fill")!)
                        .resizable()
                        .scaledToFit()
                        .foregroundColor(Color("YellowColor"))
                        .frame(width: 40, height: 40, alignment: Alignment.center)
                    Text(recipe.title)
                        .font(.system(size: 20))
                        .foregroundColor(Color(UIColor(named: "YellowColor")!))
                        .fontWeight(.semibold)
                    Text(recipe.complexity)
                }
                .padding()
                Spacer()
            }
            VStack {
                HStack{
                    Spacer()
                    Text(recipe.time)
                        .padding()
                }
                Spacer()
            }
            
        }
    }
}

struct ListItemView_Previews: PreviewProvider {
    static var previews: some View {
        ListItemView(recipe: RecipeDTO(id: 0, title: "teste", imageName: "cup.and.saucer.fill", complexity: "ppp", time: "10 min", ingredients: ["3 tablespoons of coffee granules"]))
    }
}
