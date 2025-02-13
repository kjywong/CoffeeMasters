//
//  MenuPage.swift
//  CoffeeMasters
//
//  Created by Kirsten W on 2025-02-04.
//

import SwiftUI

struct MenuPage: View {
    @EnvironmentObject var menuManager: MenuManager     //menumanager is the one holding and downloading our products - need to make it an environment object
    
    
    var body: some View {
        NavigationView{
            List {
                ForEach(menuManager.menu) { category in
                    Text(category.name)
                    
                    ForEach(category.products) { product in
                        NavigationLink {    //which page do you want it to go
                            DetailsPage(product: product)
                        } label: {      //what title do you want to show
                            ProductItem(product: product)
                        }
                    }
                    
                    
//                    .foregroundStyle(Color.clear)  //this gets rid of the arrow
                }
            }.navigationTitle("Products")
        }
    }
}

#Preview {
    MenuPage().environmentObject(MenuManager())
}
