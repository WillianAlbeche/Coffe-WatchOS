//
//  Recipe.swift
//  Coffee&Watch WatchKit Extension
//
//  Created by Bárbara Araújo Paim on 04/04/22.
//

import Foundation

struct Recipe {
    var id: Int
    var title: String
    var imageName:String
    var complexity: Complexity
    var ingredients: [String]
    var preparation: [(String, Int)]
}

enum Complexity: CustomStringConvertible {
    case easy
    case medium
    case difficult
    
    var description: String {
        switch self {
        case .easy:
            return NSLocalizedString("easy", comment: "")
        case .medium:
            return NSLocalizedString("medium", comment: "")
        case .difficult:
            return NSLocalizedString("difficult", comment: "")
            
        }
    }
}
