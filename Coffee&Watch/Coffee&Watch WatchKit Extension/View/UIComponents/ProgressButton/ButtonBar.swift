//
//  ButtonShape.swift
//  Coffee&Watch WatchKit Extension
//
//  Created by Alex Freitas on 07/04/2022.
//

import SwiftUI

struct ButtonBar: View {
    @State var progress: CGFloat

    var body: some View {
        GeometryReader { geometry in
            ZStack(alignment: .leading) {
                Rectangle()
                    .foregroundColor(.gray)
                Rectangle()
                    .foregroundColor(.corBR)
                    .frame(width: min(progress * geometry.size.width, geometry.size.width))
            }
        }
    }
}

struct ButtonShape_Previews: PreviewProvider {
    static var previews: some View {
        ButtonBar(progress: CGFloat(0.03))
    }
}
