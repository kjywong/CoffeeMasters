//
//  OffersPage.swift
//  CoffeeMasters
//
//  Created by Kirsten W on 2025-02-04.
//

import SwiftUI

struct OffersPage: View {
    var body: some View {
        NavigationView {    //navview as the container
            List {  //list to have a scroll
                Offer(title: "Early Coffee", description: "10% off. Offer valid from 6am to 9am.")
                Offer(title: "Welcome Gift", description: "25% off on your first order.")
                Offer(title: "Welcome Gift", description: "25% off on your first order.")
                Offer(title: "Welcome Gift", description: "25% off on your first order.")
            }.navigationTitle("Offers") //modifier of the child
        }
        
    }
}

#Preview {
    OffersPage()
}
