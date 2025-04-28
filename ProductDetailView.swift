//
//  ProductDetailView.swift
//  AbarrotesDonMiguel
//
//  Created by Mariana Flores Sánchez on 27/04/25.
//
import SwiftUI

struct ProductDetailView: View {
    let producto: Producto
    @EnvironmentObject var cartVM: CartViewModel

    var body: some View {
        VStack(spacing: 20) {
            Image(systemName: "photo")
                .resizable()
                .frame(width: 200, height: 200)
                .padding()
            Text(producto.nombre)
                .font(.largeTitle)
            Text(producto.descripcion)
                .padding()
            Text("$\(producto.precio, specifier: "%.2f")")
                .font(.title2)
                .padding()

            Button("Agregar al carrito") {
                cartVM.agregarProducto(producto)
            }
            .buttonStyle(.borderedProminent)
            .padding()

            Spacer()
        }
        .navigationTitle(producto.nombre)
    }
}

