//
//  ProgressButton.swift
//  Coffee&Watch WatchKit Extension
//
//  Created by Alex Freitas on 07/04/2022.
//

import SwiftUI

struct ProgressButton: View {
    private let timer = Timer.publish(every: 1, on: .main, in: .common).autoconnect()
    @State var progress = CGFloat(0)

    var body: some View {
        ZStack {
            ButtonBar(progress: $progress)
                .frame(height: 40)
                .clipShape(Capsule())
            Text("Next")
        }
        .onReceive(timer, perform: { _ in
            withAnimation {
                progress = progress < CGFloat(1) ? progress + CGFloat(0.34) : 0
            }

        })
    }
}

struct ProgressButton_Previews: PreviewProvider {
    static var previews: some View {
        ProgressButton()
    }
}
