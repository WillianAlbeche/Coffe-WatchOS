//
//  ButtonShape.swift
//  Coffee&Watch WatchKit Extension
//
//  Created by Alex Freitas on 07/04/2022.
//

import SwiftUI

struct ButtonBar: View {
    @Binding var progress: CGFloat

    var body: some View {
        GeometryReader { geometry in
            ZStack(alignment: .leading) {
                Rectangle()
                    .foregroundColor(.gray)
                Rectangle()
                    .foregroundColor(Color("greenPrimary"))
                    .frame(width: min(progress * geometry.size.width, geometry.size.width))
            }
        }
    }
}
