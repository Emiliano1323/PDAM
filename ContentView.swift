//
//  ContentView.swift
//  AbarrotesDonMiguel
//
//  Created by Mariana Flores Sánchez on 27/04/25.
//
import SwiftUI

struct ContentView: View {
    @EnvironmentObject var authVM: AuthViewModel

    var body: some View {
        NavigationStack {
            if authVM.isLoggedIn {
                HomeView()
            } else {
                LoginView()
            }
        }
    }
}

