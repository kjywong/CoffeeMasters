//
//  ContentView.swift
//  CoffeeMasters
//
//  Created by Kirsten W on 2025-02-01.
//

//sometimes will need to reload Xcode if it crashes
// cmd +K for keyboard in simulator

import SwiftUI

struct ContentView: View {
    @EnvironmentObject var cartManager: CartManager
    
    var body: some View{
        TabView {
            MenuPage()
                . tabItem{
                    Image(systemName: "cup.and.saucer")
                    //can use png for icons
                    Text("Menu")
                }
            OffersPage()
                . tabItem{
                    Image(systemName: "tag")
                    Text("Offers")
                }
            OrdersPage()
                . tabItem{
                    Image(systemName: "cart")
                    Text("Order")
                }
                .badge(cartManager.cart.count)
            InfoPage()
                . tabItem{
                    Image(systemName: "info")
                    Text("Info")
                }
        }
    }
    
    
}

//struct Greeting: View {
//    @State var name = ""        //a state var means it will trigger a rerender of the body of the view and used twice in the text and textfield
//    var body: some View {
//        VStack {
//            TextField("Enter your name", text: $name)   //textfield $ is modifying the value, two-way binding
//            Text("Hello \(name)")           //text: name is just using the value to render
//        }
//    }
//}

#Preview {
    ContentView()
}

//Notes:
// ZStack puts things in layers;
// LazyHStack, LazyVstack - for scrolling; going to be rendered as soon as they are on the screen



//ScrollView{
//    VStack {    //will recieve a closure
//        Image(systemName: "globe")
//            .imageScale(.large)
//            .foregroundStyle(.tint)
//        Text("Hello, world!")   //text is like p in html
//        Button(/*@START_MENU_TOKEN@*/"Button"/*@END_MENU_TOKEN@*/) {
//            print("Hey you clicked me!")    //this will be shown in the bottom player (not shown in simulator, used for debuggin)
//        }
//        ForEach(0..<5) { item in
//            Text("Whaddup Party People")
//                .font(.largeTitle)
//                .foregroundColor(.green)
//                .padding(30)            //order matters bc you are making new views
//                .background(Color.indigo)
//                .padding(30
//                )
////                        .opacity(0.5)   //use . to add a modifier
//        }
//    }
//    
//    
//}
