//
//  DataController.swift
//  pw-coredata
//
//  Created by Eliezer Sant Ana on 02/11/20.
//

import Foundation
import CoreData

class DataController {
    
    let persistentContainer: NSPersistentContainer
    
    var viewContext: NSManagedObjectContext {
        return persistentContainer.viewContext
    }
    
    init(modelName: String) {
        persistentContainer = NSPersistentContainer(name: modelName)
    }
    
    func load(completion: (() -> Void)? = nil) {
        persistentContainer.loadPersistentStores { (storeDescription, error) in
            guard error == nil else {
                fatalError(error!.localizedDescription)
            }
//            self.autoSaveViewContext(interval: 3)
            completion?()
        }
    }
    
    func save() throws {
        if viewContext.hasChanges {
            try viewContext.save()
        }
    }
}
