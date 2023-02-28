//
//  CartManager.swift
//  NishantEcommerceStore
//
//  Created by Nishanta Nepal on 16/01/2023.
//

import Foundation

class CartManager: ObservableObject{
    @Published private(set) var products: [Product] = []
    @Published private(set) var total: Int = 0
    
    func addToCart(product : Product) {
        products.append(product)
        total += product.price
    }
 
    func removeFromCart(product : Product){
        products = products.filter{$0.id != product.id}
        total -= product.price
    }
}
