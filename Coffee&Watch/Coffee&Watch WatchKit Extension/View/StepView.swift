//
//  Step.swift
//  Coffee&Watch WatchKit Extension
//
//  Created by Willian Magnum Albeche on 05/04/22.
//

import SwiftUI

struct StepView: View {
    var textButton:String = "Next"
    var body: some View {
        VStack {
            VStack {
                HStack(alignment: .center){
                    ProgressBar()
                }
                VStack{
                    Image(systemName: "star")
                        .resizable()
                        .frame(width: 36, height: 38)
                        .foregroundColor(.white)
                    Text("In a bowl, add in the coffee, hot water, and granulated sugar.")
                        .fontWeight(.semibold)
                        .multilineTextAlignment(.center)
                        .lineLimit(3)
                        .frame(width: 180, height: 60, alignment: .center)
                        
                }
                
            }
            VStack {
                DefaultButton(textButton: textButton)
            }
            .offset(y:30)
        }
        
    }
        
}

    
struct Step_Previews: PreviewProvider {
    static var previews: some View {
        StepView()
    }
}
