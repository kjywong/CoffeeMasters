//
//  CoffeeMastersApp.swift
//  CoffeeMasters
//
//  Created by Kirsten W on 2025-02-01.
//

import SwiftUI

@main
struct CoffeeMastersApp: App {
    
    var menuManager = MenuManager()
    var cartManager = CartManager()
    
    var body: some Scene {          //one app, one scene - like screen
        WindowGroup {
            ContentView()
                .environmentObject(menuManager)     //observable object is a protocol
                .environmentObject(cartManager)
        }
    }
}






//class Base {
//    
//}
//
//class A: Base {
//    
//}
//
//
//class B: Base {
//    
//}

//func test(index: Int) -> some Base { //some means asking the func to return one kind of base either always A or always B
   // if index == 0 {
//        return A()
//    } else{
//        return B()
//    }
//}
