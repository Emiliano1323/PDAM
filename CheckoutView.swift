//
//  CheckoutView.swift
//  AbarrotesDonMiguel
//
//  Created by Mariana Flores Sánchez on 27/04/25.
//
import SwiftUI

struct CheckoutView: View {
    @EnvironmentObject var cartVM: CartViewModel

    var body: some View {
        VStack(spacing: 20) {
            Text("Confirmar compra")
                .font(.largeTitle)
                .padding()

            Text("Total a pagar: $\(cartVM.total(), specifier: "%.2f")")
                .font(.title2)
                .padding()

            Button("Pagar") {
                // Simula el pago
                cartVM.limpiarCarrito()
                NotificationManager.shared.sendNotification(title: "Compra exitosa", body: "Gracias por tu compra en Abarrotes Don Miguel.")
            }
            .buttonStyle(.borderedProminent)
            .padding()

            Spacer()
        }
        .navigationTitle("Checkout")
    }
}

