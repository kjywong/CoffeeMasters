//
//  DetailsPage.swift
//  CoffeeMasters
//
//  Created by Kirsten W on 2025-02-05.
//

import SwiftUI

struct DetailsPage: View {
    
    @State var quantity = 1         //good practice to make state variables private
    var product: Product
    @EnvironmentObject var cartManager: CartManager
    @Environment(\.dismiss) var dismiss     //allows you to inject something from the os environemnt ie language
    
    var body: some View {
        ScrollView {
            AsyncImage(url: product.imageURL)
                .cornerRadius(5)
                .frame(maxWidth: .infinity, idealHeight: 150, maxHeight: 150)
                .padding(.top, 32)
            Text(product.name)
                .frame(maxWidth: .infinity)
                .multilineTextAlignment(.leading)
                .padding(24)
            Text(product.description)
                .frame(maxWidth: .infinity)
                .multilineTextAlignment(.leading)
                .padding(24)
                .foregroundColor(Color("Primary1"))
            HStack {
                Text("$ \(product.price, specifier: "%.2f") ea")
                Stepper(value: $quantity, in: 1...10) { }
            }
                .frame(maxWidth: .infinity)
                .padding(30)
                            
            Text("Subtotal $\(Double(quantity)*product.price, specifier: "%.2f")")
                .bold()
                .padding(12)
            
            Button("Add \(quantity) to Cart") {
                cartManager.add(product: product, quantity: quantity)
                dismiss()
            }
                .padding()
                .frame(width: 250.0)
                .background(Color("Alternative2"))
                .foregroundColor(Color.black)
                .cornerRadius(25)

        }
//            .navigationTitle(product.name)
    }
}

#Preview {
    DetailsPage(product: Product(id:1, name: "Dummy", description: "", price: 1.25, image: ""))
        .environmentObject(CartManager())       //make sure you call/inject the environment object into the preview when you call it on the view
    //when you receive an error in the preview it may no be from the file but from anywhere in the project
}
