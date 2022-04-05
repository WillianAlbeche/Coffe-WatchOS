//
//  Method.swift
//  Coffee&Watch WatchKit Extension
//
//  Created by Alex Freitas on 05/04/2022.
//

import Foundation

struct Method {
    var id: Int
    var name: String
    var accessory: Accessory
    var steps: [String] = []
}

struct Accessory {
    var id: Int
    var name: String
    var description: String
}
