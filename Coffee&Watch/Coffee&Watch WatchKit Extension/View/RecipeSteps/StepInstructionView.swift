//
//  StepInstructionView.swift
//  Coffee&Watch WatchKit Extension
//
//  Created by Willian Magnum Albeche on 06/04/22.
//

import SwiftUI

struct StepInstructionView: View {
    var body: some View {
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
}

struct StepInstructionView_Previews: PreviewProvider {
    static var previews: some View {
        StepInstructionView()
    }
}
