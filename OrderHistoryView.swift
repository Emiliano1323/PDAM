//
//  OrderHistoryView.swift
//  AbarrotesDonMiguel
//
//  Created by Mariana Flores Sánchez on 27/04/25.
//
import SwiftUI

struct OrderHistoryView: View {
    var body: some View {
        VStack {
            Text("Historial de pedidos")
                .font(.largeTitle)
                .padding()

            // Aquí puedes integrar una lista real si guardas pedidos en CoreData
            Text("No hay pedidos recientes")
                .foregroundColor(.gray)
        }
    }
}

