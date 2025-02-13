//
//  CartManager.swift
//  CoffeeMasters
//
//  Created by Kirsten W on 2025-02-05.
//

import Foundation

class CartManager: ObservableObject {
    @Published var cart: [(Product, Int)] = []
    
    func add(product: Product, quantity: Int) {
        self.cart.append( (product, quantity) )
    }
    
    func remove(product: Product) {
        self.cart.removeAll { itemInCart in
            return itemInCart.0.id==product.id          //if product has same product id, delete it
        }
    }
    
    func total() -> Double {
            var total = 0.0
            for item in cart {
                total += item.0.price * Double(item.1)
            }
            return total
        }
}
