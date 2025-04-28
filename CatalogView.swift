//
//  CatalogView.swift
//  AbarrotesDonMiguel
//
//  Created by Mariana Flores Sánchez on 27/04/25.
//
import SwiftUI

struct CatalogView: View {
    @EnvironmentObject var productVM: ProductViewModel
    @EnvironmentObject var cartVM: CartViewModel

    var body: some View {
        NavigationView {
            List(productVM.productos) { producto in
                NavigationLink(destination: ProductDetailView(producto: producto)) {
                    HStack {
                        Image(systemName: "photo") // Puedes cambiarlo a imagen real si tienes assets
                        VStack(alignment: .leading) {
                            Text(producto.nombre)
                                .font(.headline)
                            Text("$\(producto.precio, specifier: "%.2f")")
                        }
                    }
                }
            }
            .navigationTitle("Catálogo")
        }
    }
}

