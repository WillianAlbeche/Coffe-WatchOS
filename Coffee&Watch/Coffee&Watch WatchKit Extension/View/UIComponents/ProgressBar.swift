//
//  ProgressBar.swift
//  Coffee&Watch WatchKit Extension
//
//  Created by Willian Magnum Albeche on 06/04/22.
//

import SwiftUI

struct ProgressBar: View {
    @Binding var percentProgress: Double
    
    init(percentProgress: Binding<Double>) {
        self._percentProgress = percentProgress
    }
    
    var body: some View {
        ZStack(alignment: .leading){
            RoundedRectangle(cornerRadius: 3.5)
                .foregroundColor(.white)
                .frame(width: 195, height: 3)
            
            RoundedRectangle(cornerRadius: 3.5)
                .foregroundColor(.green)
                .frame(width: 195 * self.percentProgress, height: 3)
        }
    }
}

struct ProgressBar_Previews: PreviewProvider {
    static var previews: some View {
        ProgressBar(percentProgress: Binding.constant(0.30))
    }
}
