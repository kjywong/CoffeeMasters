//
//  Offer.swift
//  CoffeeMasters
//
//  Created by Kirsten W on 2025-02-04.
//

import SwiftUI

struct Offer: View {
    var title = ""
    var description = ""
    
    var body: some View {
        ZStack {
            Image("BackgroundPattern")
                .frame(maxWidth: .infinity, maxHeight: 200
                )
                .clipped()
            VStack {
                
                Text(title)
                    .padding()      //not left and right, leading and trailing
                    //.padding(.bottom)
                    .font(.title)
                    .background(Color("CardBackground"))
                Text(description)
                    .padding()
                    .background(Color("CardBackground"))
            }
        }
        
        
        
    }
}

struct Offer_Previews: PreviewProvider{
    static var previews: some View {
        Group {
            Offer(title: "My offer", description: "This is a description").previewLayout(.fixed(width: 350, height: 200))
                .preferredColorScheme(.light)
                .previewInterfaceOrientation(.portraitUpsideDown)
        }
    }
}
//#Preview {
//    Offer(title: "My Offer", description: "This is a description")
//}
