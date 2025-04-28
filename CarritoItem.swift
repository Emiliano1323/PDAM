//
//  CarritoItem.swift
//  AbarrotesDonMiguel
//
//  Created by Mariana Flores Sánchez on 27/04/25.
//
import Foundation

struct CarritoItem: Identifiable, Codable {
    var id = UUID()
    var producto: Producto
    var cantidad: Int
}

