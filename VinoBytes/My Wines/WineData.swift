//
//  WineData.swift
//  VinoDecks
//
//  Created by Logan Rausch on 3/29/24.
//

import Foundation
import SwiftUI
import CoreData  // Import CoreData

class WineData: ObservableObject {
    @Published var wines: [Wine] = []
    private var context: NSManagedObjectContext

    init(context: NSManagedObjectContext) {
        self.context = context
        fetchWines()  // Fetch wines upon initialization
    }

    func fetchWines() {
        let request: NSFetchRequest<WineEntity> = WineEntity.fetchRequest()
        do {
            let result = try context.fetch(request)
            self.wines = result.map { $0.toWine() }  // Convert WineEntity objects to Wine
        } catch {
            print("Failed to fetch wines: \(error)")
        }
    }

    func addWine(_ wine: Wine) {
        let newWine = WineEntity(context: context)
        newWine.fromWine(wine)  // Assume conversion method exists in WineEntity
        print("Added Wine: \(wine.wineName), Date Added: \(newWine.dateAdded ?? Date())")
        saveContext()
        
    }

    func updateWine(_ wine: Wine) {
        let fetchRequest: NSFetchRequest<WineEntity> = WineEntity.fetchRequest()
        fetchRequest.predicate = NSPredicate(format: "id == %@", wine.id as CVarArg)

        if let wineEntity = (try? context.fetch(fetchRequest))?.first {
            print("Updating Wine: \(wineEntity.wineName ?? "Unnamed"), Original Date Added: \(wineEntity.dateAdded ?? Date())")
            wineEntity.fromWine(wine)
            print("After Update Date Added: \(wineEntity.dateAdded ?? Date())")
            saveContext()
        }
    }

    func deleteWine(_ wine: Wine) {
        let fetchRequest: NSFetchRequest<WineEntity> = WineEntity.fetchRequest()
        fetchRequest.predicate = NSPredicate(format: "id == %@", wine.id as CVarArg)
        
        if let wineEntity = (try? context.fetch(fetchRequest))?.first {
            context.delete(wineEntity)
            saveContext()
        }
    }
    
    func deleteAllWines() {
        let fetchRequest: NSFetchRequest<NSFetchRequestResult> = WineEntity.fetchRequest()
        let deleteRequest = NSBatchDeleteRequest(fetchRequest: fetchRequest)

        do {
            try context.execute(deleteRequest)
            try context.save()
            print("All wines have been successfully deleted.")
        } catch let error as NSError {
            print("Failed to delete all wines: \(error), \(error.userInfo)")
        }
    }

    private func saveContext() {
        do {
            try context.save()
            fetchWines()  // Refresh the wines array after changes
        } catch {
            print("Failed to save context: \(error)")
        }
    }
}








