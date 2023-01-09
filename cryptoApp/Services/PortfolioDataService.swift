//
//  PortfolioDataService.swift
//  cryptoApp
//
//  Created by Ayşegül Sarı on 9.01.2023.
//

import Foundation
import CoreData

class PortfolioDataService {
    private let container: NSPersistentContainer
    private let containerName: String = "PortfolioContainer"
    private let entityName: String = "PortfolioEntity"
    
    @Published var savedEntites: [PortfolioEntity] = []
    
    init() {
        container = NSPersistentContainer(name: containerName)
        container.loadPersistentStores { <#NSPersistentStoreDescription#>, error in
            if let error = error {
                print("Error loading CoreData! \(error)")
                
                
            }
        }
    }
    
    // MARK: PUBLIC
    
    func updatePortfolio(coin: CoinModel, amount: Double) {
        
        // check if coin is already in portfolio
        if let entity = savedEntites.first(where: {$0.coinID == coin.id }) {
             
        }
    }
    
    // MARK: PRIVATE
    
    private func getPortfolio() {
        let request = NSFetchRequest<PortfolioEntity>(entityName: entityName)
        do {
            savedEntites = try container.viewContext.fetch(request)
        } catch let error {
            print("Error fetching Portfolio Entities. \(error)")
        }
        
    }
    
    private func add(coin: CoinModel, amount: Double) {
        let entity = PortfolioEntity(context: container.viewContext)
        entity.coinID = coin.id
        entity.amount = amount
        applyChanges()
    }
    
    private func update(entity: PortfolioEntity, amount: Double) {
        entity.amount = amount
        applyChanges()
        
    }
    
    private func delete(entity: PortfolioEntity) {
        container.viewContext.delete(entity)
        applyChanges()
        
    }
    
    private func save() {
        
        do {
            try container.viewContext.save()
        } catch let error {
            print("Error saving to Core Data. \(error) ")
            
        }
    }
    
    private func applyChanges() {
        save()
        getPortfolio()
        
    }
}