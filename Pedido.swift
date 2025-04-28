//
//  Pedido.swift
//  AbarrotesDonMiguel
//
//  Created by Mariana Flores Sánchez on 27/04/25.
//
import Foundation

struct Pedido: Identifiable, Codable {
    var id = UUID()
    var fecha: Date
    var productos: [CarritoItem]
    var total: Double
}

