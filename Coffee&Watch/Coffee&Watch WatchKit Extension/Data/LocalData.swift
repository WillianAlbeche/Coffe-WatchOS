//
//  LocalData.swift
//  Coffee&Watch WatchKit Extension
//
//  Created by Alex Freitas on 06/04/2022.
//

import Foundation

struct LocalData {
    static var recipes: [Recipe] =
        [Recipe(id: 0,
                title: "Biscoff Cloud Coffee", imageName: "asset1",
                complexity: .medium,
                ingredients: ["3 tablespoons of coffee granules",
                              "3 tablespoons of hot water",
                              "3 tablespoons of granulated sugar",
                              "1 brewed espresso",
                              "Handful of ice",
                              "Dairy-free milk",
                              "Biscoff cookies (optional)"
                             ],
                preparation: [("In a bowl, add in the coffee, hot water, and granulated sugar.", 5, "asset3"),
                              ("Whisk vigorously for around 5-8 minutes until thick and creamy, then set aside.", 5, "asset3"),
                              ("Fill a glass with ice, and pour over dairy-free milk (with how much milk you like).", 5, "asset3"),
                              ("Brew espresso and pour over the milk.", 5, "asset3"),
                              ("Spoon of coffee cream ontop.", 5, "asset3"),
                              ("Serve with a crumbled Biscoff cookie and cookie on the side.", 5, "asset3")
                             ]),
         Recipe(id: 1,
                 title: "Biscoff Cloud Coffee", imageName: "asset1",
                 complexity: .medium,
                 ingredients: ["3 tablespoons of coffee granules",
                               "3 tablespoons of hot water",
                               "3 tablespoons of granulated sugar",
                               "1 brewed espresso",
                               "Handful of ice",
                               "Dairy-free milk",
                               "Biscoff cookies (optional)"
                              ],
                 preparation: [("In a bowl, add in the coffee, hot water, and granulated sugar.", 5, "asset3"),
                               ("Whisk vigorously for around 5-8 minutes until thick and creamy, then set aside.", 5, "asset3"),
                               ("Fill a glass with ice, and pour over dairy-free milk (with how much milk you like).", 5, "asset3"),
                               ("Brew espresso and pour over the milk.", 5, "asset3"),
                               ("Spoon of coffee cream ontop.", 5, "asset3"),
                               ("Serve with a crumbled Biscoff cookie and cookie on the side.", 5, "asset3")
                              ]),
         Recipe(id: 2,
                 title: "Biscoff Cloud Coffee", imageName: "asset1",
                 complexity: .medium,
                 ingredients: ["3 tablespoons of coffee granules",
                               "3 tablespoons of hot water",
                               "3 tablespoons of granulated sugar",
                               "1 brewed espresso",
                               "Handful of ice",
                               "Dairy-free milk",
                               "Biscoff cookies (optional)"
                              ],
                 preparation: [("In a bowl, add in the coffee, hot water, and granulated sugar.", 5, "asset3"),
                               ("Whisk vigorously for around 5-8 minutes until thick and creamy, then set aside.", 5, "asset3"),
                               ("Fill a glass with ice, and pour over dairy-free milk (with how much milk you like).", 5, "asset3"),
                               ("Brew espresso and pour over the milk.", 5, "asset3"),
                               ("Spoon of coffee cream ontop.", 5, "asset3"),
                               ("Serve with a crumbled Biscoff cookie and cookie on the side.", 5, "asset3")
                              ]),
         Recipe(id: 3,
                 title: "Biscoff Cloud Coffee", imageName: "asset1",
                 complexity: .medium,
                 ingredients: ["3 tablespoons of coffee granules",
                               "3 tablespoons of hot water",
                               "3 tablespoons of granulated sugar",
                               "1 brewed espresso",
                               "Handful of ice",
                               "Dairy-free milk",
                               "Biscoff cookies (optional)"
                              ],
                 preparation: [("In a bowl, add in the coffee, hot water, and granulated sugar.", 5, "asset3"),
                               ("Whisk vigorously for around 5-8 minutes until thick and creamy, then set aside.", 5, "asset3"),
                               ("Fill a glass with ice, and pour over dairy-free milk (with how much milk you like).", 5, "asset3"),
                               ("Brew espresso and pour over the milk.", 5, "asset3"),
                               ("Spoon of coffee cream ontop.", 5, "asset3"),
                               ("Serve with a crumbled Biscoff cookie and cookie on the side.", 5, "asset3")
                              ])
        ]

    static var stepsDTO = [
        StepDTO(preparation: "Whisk vigorously for around 5-8 minutes until thick and creamy, then set aside.",
                preparationTime: 5, icon: "asset3"),
        StepDTO(preparation: "Spoon of coffee cream ontop.",
                preparationTime: 5, icon: "asset3"),
        StepDTO(preparation: "Serve with a crumbled Biscoff cookie and cookie on the side.",
                preparationTime: 5, icon: "asset3"),
    ]
}
