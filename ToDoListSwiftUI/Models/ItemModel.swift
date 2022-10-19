//
//  ItemModel.swift
//  ToDoListSwiftUI
//
//  Created by Oksana on 19.10.2022.
//

import Foundation

struct ItemModel: Identifiable {
    let id: String = UUID().uuidString
    let title: String
    let isCompleted: Bool
}
