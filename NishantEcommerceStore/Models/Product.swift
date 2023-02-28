//
//  Product.swift
//  NishantEcommerceStore
//
//  Created by Nishanta Nepal on 14/01/2023.
//

import Foundation

struct Product: Identifiable{
    var id = UUID()
    var name: String
    var image: String
    var price: Int
}

var productList = [Product(name: "Orange Sweater", image: "sweater1", price: 5400),
                   Product(name: "Red wine Sweater", image: "sweater2", price: 2300),
                   Product(name: "Sand Sweater", image: "sweater3", price: 4400),
                   Product(name: "Sea Sweater", image: "sweater4", price: 1900),
                   Product(name: "Baige Sweater", image: "sweater5", price: 2400),
                   Product(name: "Cream Sweater", image: "sweater6", price: 2600),
                   Product(name: "Mink Sweater", image: "sweater7", price: 2560),
                   Product(name: "Military Sweater", image: "sweater8", price: 3700)
]
