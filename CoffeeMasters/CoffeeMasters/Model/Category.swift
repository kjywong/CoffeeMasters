//
//  Category.swift
//  CoffeeMasters
//
//  Created by Kirsten W on 2025-02-05.
//

import Foundation

struct Category: Decodable, Identifiable {      //idenitfiable - means needs to have a property with a name ID
    var name: String
    var products: [Product]
    var id: String {
        return self.name        //using name as the id - items can't have the same name
    }
}
