//
//  MenuManager.swift
//  CoffeeMasters
//
//  Created by Kirsten W on 2025-02-05.
// cmd +b to compile

import Foundation
import Alamofire

class MenuManager: ObservableObject {
    @Published var menu: [Category] = []     //if you want views to have bindings to that variable you need to publish it
//        Category(name: "HOT COFFEE", products: [
//            Product(id: 0, name: "", description: "", price: 1.25, image: ""),
//            Product(id: 0, name: "", description: "", price: 1.25, image: ""),
//            Product(id: 0, name: "", description: "", price: 1.25, image: ""),
//            Product(id: 0, name: "", description: "", price: 1.25, image: "")]),
//    ]
    init() {    //going to network and download json file and automatically mapping file from the netweork to my data model
        refreshItemsFromNetwork()
    }
    
    func refreshItemsFromNetwork()  {
            AF.request("https://firtman.github.io/coffeemasters/api/menu.json")
                .responseDecodable(of: [Category].self) { response in
                    if let menuFromNetwork = response.value {
                        print(response.value) 
                        self.menu = menuFromNetwork
                    }
                }
        }
}
