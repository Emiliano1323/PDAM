//
//  CoreDataManager.swift
//  AbarrotesDonMiguel
//
//  Created by Mariana Flores Sánchez on 27/04/25.
//
import Foundation
import CoreData

class CoreDataManager: ObservableObject {
    let persistentContainer: NSPersistentContainer

    init() {
        persistentContainer = NSPersistentContainer(name: "AbarrotesDonMiguelModel")
        persistentContainer.loadPersistentStores { description, error in
            if let error = error {
                fatalError("Error al cargar CoreData: \(error.localizedDescription)")
            }
        }
    }

    func saveContext() {
        let context = persistentContainer.viewContext
        if context.hasChanges {
            do {
                try context.save()
            } catch {
                let nserror = error as NSError
                fatalError("Error al guardar CoreData: \(nserror.localizedDescription)")
            }
        }
    }
}

