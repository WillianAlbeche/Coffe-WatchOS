//
//  StepSuperView.swift
//  Coffee&Watch WatchKit Extension
//
//  Created by Alex Freitas on 08/04/2022.
//

import SwiftUI

struct StepSuperView: View {
    @State var stepProgress = CGFloat(0)
    @State var recipeProgress = 0.0

    var steps = LocalData.stepsDTO

    var body: some View {
        GeometryReader { proxy in
            VStack(spacing: 12) {
                ProgressBar(totalStepsRecipe: steps.count, percentProgress: $recipeProgress)
                TabView {
                    ForEach(Array(zip(steps.indices, steps)), id: \.0) { index, step in
                        StepInstructionView(step: step)
                            .tag(index)
                    }
                }
                .tabViewStyle(.page(indexDisplayMode: .never))
                .tabViewStyle(PageTabViewStyle())
                .frame(width: proxy.size.width, height: proxy.size.height * 0.73)
                ProgressButton(stepProgress: $stepProgress)
                    .frame(width: proxy.size.width * 0.93)
            }
        }
    }
}

struct StepSuperView_Previews: PreviewProvider {
    static var previews: some View {
        StepSuperView()
    }
}
