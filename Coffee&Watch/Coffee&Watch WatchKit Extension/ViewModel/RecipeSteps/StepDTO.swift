//
//  StepDTO.swift
//  Coffee&Watch WatchKit Extension
//
//  Created by Willian Magnum Albeche on 06/04/22.
//

import Foundation

struct StepDTO {
    var preparation: String
    var preparationTime: Int
    var icon: StepIcon = .something
}

enum StepIcon {
    case something
}
