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
                title: "Affogato", imageName: "asset1",
                complexity: .medium,
                ingredients: ["1 scoop vanilla gelato, or ice cream",
                              "2 ounces hot espresso, or strongly brewed hot coffee",
                              "Grated chocolate, for garnish"
                             ],
                preparation: [("Gather the ingredients.", 5, "asset3"),
                              ("In a chilled glass or dessert dish, place a large scoop of vanilla gelato or ice cream.", 5, "asset3"),
                              ("Slowly pour the espresso or coffee over the ice cream.", 5, "asset3"),
                              ("Garnish with shaved or grated chocolate.", 5, "asset3"),
                              ("Serve with a spoon and enjoy!", 5, "asset3")
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
                 title: "White Chocolate Mocha", imageName: "asset1",
                 complexity: .medium,
                 ingredients: ["3/4 cup whole milk, or low-fat",
                               "3 tablespoons white chocolate chips",
                               "1/2 cup brewed coffee",
                               "1 teaspoon sugar, optional",
                               "2 tablespoons whipped cream, for garnish",
                               "Dash ground nutmeg, for garnish"
                              ],
                 preparation: [("Gather the ingredients.", 5, "asset3"),
                               ("Add the milk and the white chocolate chips to a heavy bottom pot. Whisk together, on medium-low heat, until the white chocolate has been incorporated and the sauce is smooth.", 5, "asset3"),
                               ("Brew a half cup of your favorite coffee or espresso and pour into a cup or mug. Pour the white chocolate milk sauce over the coffee and stir in any additional sugar, if desired.", 5, "asset3"),
                               ("Top with either homemade or store-bought whipped cream and sprinkle on a light dusting of ground nutmeg.", 5, "asset3"),
                               ("Serve and enjoy!", 5, "asset3")
                              ]),
         Recipe(id: 3,
                 title: "Hong Kong Yuanyang: Coffee With Tea", imageName: "asset1",
                 complexity: .medium,
                 ingredients: ["1 cup Bolivian drip coffee (brewed extra strong)",
                               "1 cup Hong Kong-Style milk tea",
                               "1/2 to 1 cup ice"
                              ],
                 preparation: [("Gather the ingredients.", 5, "asset3"),
                               ("In a medium-sized pitcher, mix the coffee with the tea.", 5, "asset3"),
                               ("Prepare two 8-ounce glasses by adding ice to taste to each.", 5, "asset3"),
                               ("Pour the coffee and tea mixture over the ice.", 5, "asset3")
                              ])
        ]
}
