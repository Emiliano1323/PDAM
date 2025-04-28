//
//  AbarrotesDonMiguelApp.swift
//  AbarrotesDonMiguel
//
//  Created by Mariana Flores Sánchez on 27/04/25.
//
import SwiftUI

@main
struct AbarrotesDonMiguelApp: App {
    @StateObject private var coreDataManager = CoreDataManager()
    @StateObject var authVM = AuthViewModel()

    var body: some Scene {
        WindowGroup {
            ContentView()
                .environment(\.managedObjectContext, coreDataManager.persistentContainer.viewContext)
                .environmentObject(authVM)
        }
    }
}
