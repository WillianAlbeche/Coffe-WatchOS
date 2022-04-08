//
//  StepSuperView.swift
//  Coffee&Watch WatchKit Extension
//
//  Created by Alex Freitas on 08/04/2022.
//

import SwiftUI

struct StepSuperView: View {
//    var recipeId: Int
    var steps = LocalData.stepsDTO

    @State var recipeProgress = 0.0
    @State var stepProgress = CGFloat(0)

    private let timer = Timer.publish(every: 4, on: .main, in: .common).autoconnect()
    @State private var currentIndex = 0

    private func goToNextStep() {
        withAnimation {
            currentIndex = currentIndex < steps.count ? currentIndex + 1 : 0
        }
    }

    var body: some View {
        GeometryReader { proxy in
            VStack(spacing: 12) {
                ProgressBar(totalStepsRecipe: steps.count, percentProgress: $recipeProgress)
                TabView(selection: $currentIndex) {
                    ForEach(Array(zip(steps.indices, steps)), id: \.0) { index, step in
                        StepInstructionView(step: step)
                            .tag(index)
                    }
                }
                .tabViewStyle(.page(indexDisplayMode: .never))
                .tabViewStyle(PageTabViewStyle())
                .frame(width: proxy.size.width, height: proxy.size.height * 0.73)
                Button(action: {
                    goToNextStep()
                }, label: {
                    ProgressButton(stepProgress: $stepProgress)
                        .frame(width: proxy.size.width * 0.93)
                })
            }
            .onReceive(timer, perform: { _ in
                goToNextStep()
            })
        }
    }
}

struct StepSuperView_Previews: PreviewProvider {
    static var previews: some View {
        StepSuperView()
    }
}
