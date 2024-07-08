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
        saveContext()
    }

    func updateWine(_ wine: Wine) {
        let fetchRequest: NSFetchRequest<WineEntity> = WineEntity.fetchRequest()
        fetchRequest.predicate = NSPredicate(format: "id == %@", wine.id as CVarArg)

        if let wineEntity = (try? context.fetch(fetchRequest))?.first {
            wineEntity.fromWine(wine)
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

    private func saveContext() {
        do {
            try context.save()
            fetchWines()  // Refresh the wines array after changes
        } catch {
            print("Failed to save context: \(error)")
        }
    }
}






