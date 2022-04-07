//
//  Step.swift
//  Coffee&Watch WatchKit Extension
//
//  Created by Willian Magnum Albeche on 05/04/22.
//

import SwiftUI

struct StepView: View {
    @State private var currentIndex = 0
    private let timer = Timer.publish(every: 4, on: .main, in: .common).autoconnect()
    
    @ObservedObject var viewModel: StepViewModel
    @State var steps: [StepDTO] = []
    
    var textButton: String = "Next"
    var recipeId: Int
    
    var body: some View {
        
        VStack {
            VStack {
                HStack(alignment: .center) {
                    let percentCalculate = Double(currentIndex)/Double(viewModel.getRecipeSteps(recipeId: recipeId).count)
                    ProgressBar(totalStepsRecipe: viewModel.getRecipeSteps(recipeId: recipeId).count, percentProgress: Binding.constant(percentCalculate))
                }
                VStack {
                    ScrollViewReader { proxy in
                        VStack {
                            ScrollView(.horizontal, showsIndicators: false) {
                                HStack {
                                    ForEach(Array(zip(steps.indices, steps)), id: \.0) { index, step in
                                        StepInstructionView(step: step)
                                            .tag(index)
                                    }
                                }
                                .onReceive(timer, perform: { _ in
                                    withAnimation {
                                        currentIndex = currentIndex < steps.count ? currentIndex + 1 : 0
                                        proxy.scrollTo(currentIndex)
                                    }
                                })
                            }
                        }
                    }
                }
            }
            VStack {
                ProgressButton()
            }
            
            .offset(y:30)
        }.onAppear {
            steps = viewModel.getRecipeSteps(recipeId: recipeId)
        }
    }
}


struct Step_Previews: PreviewProvider {
    static var previews: some View {
        StepView(viewModel: StepViewModel(), recipeId: 0)
    }
}
