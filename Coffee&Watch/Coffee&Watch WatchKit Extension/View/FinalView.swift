//
//  FinalView.swift
//  Coffee&Watch WatchKit Extension
//
//  Created by Bárbara Araújo Paim  on 07/04/22.
//

import SwiftUI
import Foundation




struct FinalView: View {
    var body: some View {
        VStack (alignment: .center ){
            ZStack {
                Circle()
                    .fill(Color("greenSecondary").opacity(0.2))
                    
                    .frame(width: 123, height: 123 )
                    
                Circle()
                    .fill(Color("greenPrimary"))
                    .frame(width: 79.07, height: 79.07 )
                Image("Frame66")
                    .frame(width: 51, height: 52)
                    
            }
            Spacer()
            Text("Enjoy your coffee!")
                .font(.system(size: 20))
                .fontWeight(.semibold)
                
       }
    }
}

struct FinalView_Previews: PreviewProvider {
    static var previews: some View {
        FinalView()
    }
}

