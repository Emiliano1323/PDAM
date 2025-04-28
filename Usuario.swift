//
//  Usuario.swift
//  AbarrotesDonMiguel
//
//  Created by Mariana Flores Sánchez on 27/04/25.
//
import Foundation

struct Usuario: Identifiable, Codable {
    var id = UUID()
    var nombre: String
    var correo: String
    var contrasena: String
}

