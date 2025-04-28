//
//  AuthViewModel.swift
//  AbarrotesDonMiguel
//
//  Created by Mariana Flores Sánchez on 27/04/25.
//
import Foundation

class AuthViewModel: ObservableObject {
    @Published var isLoggedIn = false
    private var authService = AuthService()

    func login(email: String, password: String) -> Bool {
        if authService.login(correo: email, contrasena: password) {
            isLoggedIn = true
            return true
        }
        return false
    }

    func register(nombre: String, email: String, password: String) {
        let user = Usuario(nombre: nombre, correo: email, contrasena: password)
        authService.register(usuario: user)
    }

    func logout() {
        isLoggedIn = false
    }
}

