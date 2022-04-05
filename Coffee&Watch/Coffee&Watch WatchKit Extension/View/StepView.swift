//
//  Step.swift
//  Coffee&Watch WatchKit Extension
//
//  Created by Willian Magnum Albeche on 05/04/22.
//

import SwiftUI

struct StepView: View {
    var body: some View {
        VStack {
            HStack{
                Spacer()
                Circle()
                    .fill(Color("Background"))
                .frame(width: 23, height: 23)
                    .overlay(
                        Circle()
                            .stroke(style: StrokeStyle(lineWidth: 2, lineCap: .round, lineJoin:.round))
                            .fill(LinearGradient(gradient: Gradient(colors: [Color(#colorLiteral(red: 0.4397024512, green: 0.2232645452, blue: 0.03485441208, alpha: 1)), Color(#colorLiteral(red: 1, green: 0.6279434562, blue: 0, alpha: 1))]), startPoint: .bottomLeading , endPoint: .topTrailing))
                    )
                    
            }
            
            Image(systemName: "star")
                .resizable()
                .frame(width: 36, height: 38)
                .foregroundColor(.white)
            Text("In a bowl, add in the coffee, hot water, and granulated sugar.")
                .fontWeight(.semibold)
                .multilineTextAlignment(.center)
                .lineLimit(3)
            DefaultButton()
                //.offset(x: 0, y: 50)
        }
        //.ignoresSafeArea()
        
    }
        
}
    
struct Step_Previews: PreviewProvider {
    static var previews: some View {
        StepView()
    }
}
