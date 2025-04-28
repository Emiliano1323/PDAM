//
//  LoginView.swift
//  AbarrotesDonMiguel
//
//  Created by Mariana Flores Sánchez on 27/04/25.
//
import SwiftUI

struct LoginView: View {
    @EnvironmentObject var authVM: AuthViewModel
    @State private var email = ""
    @State private var password = ""

    var body: some View {
        VStack {
            TextField("Correo electrónico", text: $email)
                .textFieldStyle(.roundedBorder)
                .padding()
            SecureField("Contraseña", text: $password)
                .textFieldStyle(.roundedBorder)
                .padding()
            Button("Iniciar sesión") {
                if !authVM.login(email: email, password: password) {
                    // Mostrar error
                }
            }
            .padding()
            NavigationLink("Registrarse", destination: RegisterView())
                .padding()
        }
    }
}

