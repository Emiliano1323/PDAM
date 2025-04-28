//
//  AuthService.swift
//  AbarrotesDonMiguel
//
//  Created by Mariana Flores Sánchez on 27/04/25.
//
import Foundation

class AuthService {
    private var usuarios: [Usuario] = []

    func login(correo: String, contrasena: String) -> Bool {
        return usuarios.contains { $0.correo == correo && $0.contrasena == contrasena }
    }

    func register(usuario: Usuario) {
        usuarios.append(usuario)
    }
}

