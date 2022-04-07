//
//  ProgressButton.swift
//  Coffee&Watch WatchKit Extension
//
//  Created by Alex Freitas on 07/04/2022.
//

import SwiftUI

struct ProgressButton: View {
    private let timer = Timer.publish(every: 3, on: .main, in: .common).autoconnect()
    @State var progress: CGFloat

    var body: some View {
        ZStack {
            ButtonBar(progress: progress)
                .frame(height: 40)
                .clipShape(Capsule())
            Text("Button")
        }
        .onReceive(timer, perform: { _ in
            withAnimation {
                progress = progress < CGFloat(100.0) ? progress + CGFloat(0.1) : 0
                print(progress)
            }
        })
    }
}

struct ProgressButton_Previews: PreviewProvider {
    static var previews: some View {
        ProgressButton(progress: CGFloat(0.7))
    }
}
