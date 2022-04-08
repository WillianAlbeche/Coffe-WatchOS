//
//  ProgressButton.swift
//  Coffee&Watch WatchKit Extension
//
//  Created by Alex Freitas on 07/04/2022.
//

import SwiftUI

struct ProgressButton: View {
    private let timer = Timer.publish(every: 0.2, on: .main, in: .common).autoconnect()
    @State var progress = CGFloat(0)
    @Binding var stepProgress: CGFloat

    var body: some View {
        ZStack {
            ButtonBar(progress: $progress)
                .frame(height: 40)
                .clipShape(Capsule())
            Text("Next")
        }
        .onReceive(timer, perform: { _ in
            withAnimation {
                if progress <= 1.0 {
                    progress += $stepProgress.wrappedValue
                } else {
                    progress = 0.0
                }
            }
        })
    }
}
