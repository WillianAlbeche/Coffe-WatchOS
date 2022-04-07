//
//  circlebitch.swift
//  Coffee&Watch WatchKit Extension
//
//  Created by Alex Freitas on 07/04/2022.
//

import SwiftUI

struct circlebitch: View {
    var body: some View {
        ZStack {
            Circle()
                .fill(Color.corBR)
        }
    }
}

struct circlebitch_Previews: PreviewProvider {
    static var previews: some View {
        circlebitch()
    }
}

extension Color {
    static let corBR = Color("Brazil")
}
