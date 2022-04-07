//
//  ProgressBar.swift
//  Coffee&Watch WatchKit Extension
//
//  Created by Willian Magnum Albeche on 06/04/22.
//

import SwiftUI

struct ProgressBar: View {
    @State var totalStepsRecipe: Int = 20
    var oneStepValue: Int = 1
    @State var percentProgress: Double = 0.25
    //  total de passos = 100 / pelo numero de steps
    var body: some View {
        ZStack(alignment: .leading){
            RoundedRectangle(cornerRadius: 3.5)
                .foregroundColor(.white)
                .frame(width: 195, height: 3)
            
            RoundedRectangle(cornerRadius: 3.5)
                .foregroundColor(.green)
                .frame(width: 195 * percentProgress, height: 3)
                
            
        }
        
    }

}

struct ProgressBar_Previews: PreviewProvider {
    static var previews: some View {
        ProgressBar()
    }
}
