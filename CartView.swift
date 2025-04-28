//
//  CartView.swift
//  AbarrotesDonMiguel
//
//  Created by Mariana Flores Sánchez on 27/04/25.
//
import SwiftUI

struct CartView: View {
    @EnvironmentObject var cartVM: CartViewModel

    var body: some View {
        NavigationView {
            VStack {
                if cartVM.carrito.isEmpty {
                    Text("Tu carrito está vacío")
                        .foregroundColor(.gray)
                } else {
                    List(cartVM.carrito) { item in
                        HStack {
                            Text(item.producto.nombre)
                            Spacer()
                            Text("x\(item.cantidad)")
                            Text("$\(item.producto.precio * Double(item.cantidad), specifier: "%.2f")")
                        }
                    }
                    .listStyle(.plain)

                    Text("Total: $\(cartVM.total(), specifier: "%.2f")")
                        .font(.title2)
                        .padding()

                    NavigationLink(destination: CheckoutView()) {
                        Text("Proceder al pago")
                            .frame(maxWidth: .infinity)
                            .padding()
                            .background(Color.blue)
                            .foregroundColor(.white)
                            .cornerRadius(10)
                    }
                    .padding()
                }
            }
            .navigationTitle("Carrito")
        }
    }
}

