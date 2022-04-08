//
//  Step.swift
//  Coffee&Watch WatchKit Extension
//
//  Created by Willian Magnum Albeche on 05/04/22.
//

import SwiftUI

struct StepView: View {
    @ObservedObject var viewModel: StepViewModel
    @State var steps: [StepDTO] = []
    var recipeId: Int
    @State private var viewLink: Int? = 0
    @State private var showEnjoyView = false

    @State var recipeProgress = 0.0
    @State var stepProgress = CGFloat(0)

    @State private var currentIndex = 0
    private let timer = Timer.publish(every: 4, on: .main, in: .common).autoconnect()

    private func goToNextStep() {
        withAnimation {
            if currentIndex < steps.count {
                currentIndex = currentIndex < steps.count ? currentIndex + 1 : 0
            } else {
                print("Go to EnjoyYourCoffeeView")
                showEnjoyView = true
            }
        }
    }

    private func progressBarCalculation() -> Double {
        let totalSteps = Double(steps.count)
        let stepsConcluded = Double(currentIndex)
        let percentCalculate = stepsConcluded / totalSteps

        return percentCalculate
    }

    var body: some View {
        NavigationView {
            GeometryReader { proxy in
                VStack(spacing: 12) {
                    ProgressBar(percentProgress: Binding.constant(progressBarCalculation()))
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
                .onAppear() {
                    steps = viewModel.getRecipeSteps(recipeId: recipeId)
                }
                .onReceive(timer, perform: { _ in
                    goToNextStep()
                })
                .background(NavigationLink(destination: EnjoyYourCoffeeView(), isActive: $showEnjoyView) {EmptyView()} )
            }
        }
    }
}


struct Step_Previews: PreviewProvider {
    static var previews: some View {
        StepView(viewModel: StepViewModel(), recipeId: 0)
    }
}
