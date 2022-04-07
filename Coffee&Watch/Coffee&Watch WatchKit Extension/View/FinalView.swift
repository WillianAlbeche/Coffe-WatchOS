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
                    .fill(Color.greenPrimary)
            }
       }
    }
}

struct FinalView_Previews: PreviewProvider {
    static var previews: some View {
        FinalView()
    }
}
extension Color {
    static let greenPrimary = Color("greenPrimary")
}
