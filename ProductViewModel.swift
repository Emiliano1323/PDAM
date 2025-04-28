//
//  ProductViewModel.swift
//  AbarrotesDonMiguel
//
//  Created by Mariana Flores Sánchez on 27/04/25.
//
import Foundation

class ProductViewModel: ObservableObject {
    @Published var productos: [Producto] = [
        Producto(nombre: "Manzana", descripcion: "Manzana roja fresca", precio: 10.0, imagen: "manzana"),
        Producto(nombre: "Leche", descripcion: "Leche entera 1L", precio: 25.0, imagen: "leche"),
        Producto(nombre: "Pan", descripcion: "Pan integral rebanado", precio: 30.0, imagen: "pan")
    ]
}

