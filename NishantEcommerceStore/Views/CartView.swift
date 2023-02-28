//
//  CartView.swift
//  NishantEcommerceStore
//
//  Created by Nishanta Nepal on 16/01/2023.
//

import SwiftUI

struct CartView: View {
    @EnvironmentObject var cartManager: CartManager
    var body: some View {
        ScrollView{
            if(cartManager.products.count > 0){
                ForEach(cartManager.products, id:\.id){
                    product in ProductRow(product: product)
                }
                HStack{
                    Text("Your cart total is: ")
                        .padding()
                    Spacer()
                    Text("Rs.\(cartManager.total)")
                        .bold()
                        .padding()
                }
            }
            else{
                Text("Your cart is empty")
                    .bold()
                    .padding(50)
            }
        }
        .navigationTitle(Text("My Cart"))
        .padding(.top)
    }
}

struct CartView_Previews: PreviewProvider {
    static var previews: some View {
        CartView()
            .environmentObject(CartManager())
    }
}
