//
//  DefaultButton.swift
//  Coffee&Watch WatchKit Extension
//
//  Created by Willian Magnum Albeche on 05/04/22.
//

import SwiftUI

struct DefaultButton: View {
    @State var textButton: String = "Texto padrão"
    
    var body: some View {
        Button(action: {
            print("Apertado!")
        }, label: {
            Text(textButton)
                .font(.system(size: 20))
                .fontWeight(.semibold)
        })
        .frame(width: 182, height: 36)
        .background(.white)
        .cornerRadius(22)
        .foregroundColor(.black)
    }
}

struct DefaultButton_Previews: PreviewProvider {
    static var previews: some View {
        DefaultButton()
    }
}
