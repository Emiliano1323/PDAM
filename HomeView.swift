//
//  HomeView.swift
//  AbarrotesDonMiguel
//import SwiftUI

import SwiftUI

struct HomeView: View {
    @StateObject private var productVM = ProductViewModel()
    @StateObject private var cartVM = CartViewModel()

    var body: some View {
        TabView {
            CatalogView()
                .environmentObject(productVM)
                .environmentObject(cartVM)
                .tabItem {
                    Label("Catálogo", systemImage: "cart")
                }
            
            CartView()
                .environmentObject(cartVM)
                .tabItem {
                    Label("Carrito", systemImage: "bag")
                }
            
            OrderHistoryView()
                .tabItem {
                    Label("Pedidos", systemImage: "list.bullet.rectangle.portrait")
                }
        }
    }
}
