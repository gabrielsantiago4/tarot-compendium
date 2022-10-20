//
//  DataManager.swift
//  tarot-compendium
//
//  Created by Gabriel Santiago on 19/10/22.
//

import Foundation
import CoreData

class DataManager {
    
    static let shared = DataManager()
    
    lazy var persistentContainer: NSPersistentContainer = {
        let container = NSPersistentContainer(name: "FavouriteData")
        container.loadPersistentStores { (_, error) in
            if let error = error as? NSError {
                fatalError(error.userInfo.description)
            }
        }
        return container
    }()
    
    func save(card: CardModel) {
        let favoriteCard = FavouriteCards(context: persistentContainer.viewContext)
        favoriteCard.name = card.name
        favoriteCard.meaning_rev = card.meaning_rev
        favoriteCard.meaning_up = card.meaning_up
        favoriteCard.desc = card.desc
        favoriteCard.type = card.type.rawValue
        favoriteCard.value = card.value
        favoriteCard.value_int = card.value_int
        favoriteCard.name_short = card.name_short
        do {
            try persistentContainer.viewContext.save()
        } catch {
            print(error)
        }
    }
    
    func fetchSavedCards() -> [NSManagedObject]{
        let contexManager = DataManager().persistentContainer.viewContext
        let fetchRequest = NSFetchRequest<NSManagedObject>(entityName: "FavouriteData")
        do{
            let dataToReturn = try contexManager.fetch(fetchRequest)
            return dataToReturn
        } catch {
            print("falha ao obter os arquivos")
        }
        return [NSManagedObject]()
    }
    
    
}
