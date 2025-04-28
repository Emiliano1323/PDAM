//
//  Producto.swift
//  AbarrotesDonMiguel
//
//  Created by Mariana Flores Sánchez on 27/04/25.
//
import Foundation

struct Producto: Identifiable, Codable {
    var id = UUID()
    var nombre: String
    var descripcion: String
    var precio: Double
    var imagen: String
}

