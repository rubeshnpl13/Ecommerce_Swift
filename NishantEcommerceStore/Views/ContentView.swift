//
//  ContentView.swift
//  NishantEcommerceStore
//
//  Created by Nishanta Nepal on 13/01/2023.
//

import SwiftUI

struct ContentView: View {
    @StateObject var cartManager = CartManager()
    var column = [GridItem(.adaptive(minimum: 160), spacing: 20)]
    var body: some View {
        NavigationView {
            ScrollView {
                LazyVGrid(columns: column, spacing: 20){
                    ForEach(productList, id: \.id){ product in
                        ProductCard(product: product)
                            .environmentObject(cartManager)
                    }
                }
                .padding()
            }
            .navigationTitle(Text("Nishant Ecommerce"))
            .toolbar{
                NavigationLink{
                    CartView()
                        .environmentObject(cartManager)

                } label: {
                    CartButton(numberOfProducts: cartManager.products.count)

                }
            }
        }
        .navigationViewStyle(StackNavigationViewStyle())
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
