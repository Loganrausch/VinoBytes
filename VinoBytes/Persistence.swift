//
//  Persistence.swift
//  VinoDecks
//
//  Created by Logan Rausch on 3/1/24.
//

import CoreData
import Combine
import CloudKit // Import CloudKit to interact with CloudKit APIs

class PersistenceController: ObservableObject {
    static let shared = PersistenceController()
    
    let container: NSPersistentCloudKitContainer
    
    
    init(inMemory: Bool = false) {
        container = NSPersistentCloudKitContainer(name: "StudyCardModel")
        
        // Configure persistent store descriptions
        let description = container.persistentStoreDescriptions.first
        if inMemory {
            description?.url = URL(fileURLWithPath: "/dev/null")
        }
        
        // Load persistent stores
        container.loadPersistentStores { storeDescription, error in
            if let error = error as NSError? {
                print("Unresolved CoreData error \(error), \(error.userInfo)")
            }
        }
    }
}
