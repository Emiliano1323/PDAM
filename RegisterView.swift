//
//  RegisterView.swift
//  AbarrotesDonMiguel
//
//  Created by Mariana Flores Sánchez on 27/04/25.
//
import SwiftUI

struct RegisterView: View {
    @EnvironmentObject var authVM: AuthViewModel
    @State private var nombre = ""
    @State private var email = ""
    @State private var password = ""

    var body: some View {
        VStack {
            TextField("Nombre completo", text: $nombre)
                .textFieldStyle(.roundedBorder)
                .padding()
            TextField("Correo electrónico", text: $email)
                .textFieldStyle(.roundedBorder)
                .padding()
            SecureField("Contraseña", text: $password)
                .textFieldStyle(.roundedBorder)
                .padding()
            Button("Registrar") {
                authVM.register(nombre: nombre, email: email, password: password)
            }
            .padding()
        }
    }
}

