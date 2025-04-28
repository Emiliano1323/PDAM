//
//  CartViewModel.swift
//  AbarrotesDonMiguel
//
//  Created by Mariana Flores Sánchez on 27/04/25.
//
import Foundation

class CartViewModel: ObservableObject {
    @Published var carrito: [CarritoItem] = []

    func agregarProducto(_ producto: Producto) {
        if let index = carrito.firstIndex(where: { $0.producto.id == producto.id }) {
            carrito[index].cantidad += 1
        } else {
            carrito.append(CarritoItem(producto: producto, cantidad: 1))
        }
    }

    func total() -> Double {
        carrito.reduce(0) { $0 + ($1.producto.precio * Double($1.cantidad)) }
    }

    func limpiarCarrito() {
        carrito.removeAll()
    }
}

