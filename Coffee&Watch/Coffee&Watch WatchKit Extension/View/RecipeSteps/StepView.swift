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

    @State var recipeProgress = 0.0
    @State var stepProgress = CGFloat(0)

    @State private var currentIndex = 0
    private let timer = Timer.publish(every: 4, on: .main, in: .common).autoconnect()

    private func goToNextStep() {
        withAnimation {
            currentIndex = currentIndex < steps.count ? currentIndex + 1 : 0
        }
    }

    private func progressBarCalculation() -> Double {
        let totalSteps = Double(steps.count)
        let stepsConcluded = Double(currentIndex)
        let percentCalculate = stepsConcluded / totalSteps

        return percentCalculate
    }

    var body: some View {
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
        }

//        VStack {
//            VStack {
//                HStack(alignment: .center) {
//                    let percentCalculate = Double(currentIndex)/Double(viewModel.getRecipeSteps(recipeId: recipeId).count)
//                    ProgressBar(totalStepsRecipe: viewModel.getRecipeSteps(recipeId: recipeId).count, percentProgress: Binding.constant(percentCalculate))
//                }
//                VStack {
//                    ScrollViewReader { proxy in
//                        VStack {
//                            ScrollView(.horizontal, showsIndicators: false) {
//                                HStack {
//                                    ForEach(Array(zip(steps.indices, steps)), id: \.0) { index, step in
//                                        StepInstructionView(step: step)
//                                            .tag(index)
//                                    }
//                                }
//                                .onReceive(timer, perform: { _ in
//                                    withAnimation {
//                                        currentIndex = currentIndex < steps.count ? currentIndex + 1 : 0
//                                        proxy.scrollTo(currentIndex)
//                                    }
//                                })
//                            }
//                        }
//                    }
//                }
//            }
//            VStack {
//                ProgressButton(stepProgress: $stepProgress)
//            }
//
//            .offset(y:30)
//        }.onAppear {
//            steps = viewModel.getRecipeSteps(recipeId: recipeId)
//        }
    }
}


struct Step_Previews: PreviewProvider {
    static var previews: some View {
        StepView(viewModel: StepViewModel(), recipeId: 0)
    }
}
