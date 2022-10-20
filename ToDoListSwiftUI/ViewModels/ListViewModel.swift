//
//  ListViewModel.swift
//  ToDoListSwiftUI
//
//  Created by Oksana on 20.10.2022.
//

import Foundation

final class ListViewModel: ObservableObject  {
    
    // MARK: - Properties
    
    @Published var items: [ItemModel] = [] {
        didSet {
            saveItems()
        }
    }
    
    private let itemsKey: String = "items_list"
    
    // MARK: - Init
    
    init() {
        getItems()
    }
    
    // MARK: - Functions
    
    func getItems() {
        guard let data = UserDefaults.standard.data(forKey: itemsKey),
              let savedItems = try? JSONDecoder().decode([ItemModel].self, from: data)
        else { return  }
        
        self.items = savedItems
    }
    
    func deleteItem(indexSet: IndexSet)  {
        items.remove(atOffsets: indexSet)
    }
    
    func moveItem(from: IndexSet, to: Int) {
        items.move(fromOffsets: from, toOffset: to)
    }
    
    func addItem(title: String) {
        let newItem = ItemModel(title: title, isCompleted: false)
        items.append(newItem)
    }
    
    func saveItems() {
        if let encodedData = try? JSONEncoder().encode(items) {
            UserDefaults.standard.set(encodedData, forKey: itemsKey )
        }
    }
    
    func updateItem(item: ItemModel) {
        if let index = items.firstIndex(where: { $0.id == item.id }) {
            items[index] = item.updateCompletion()
        }
    }
}
