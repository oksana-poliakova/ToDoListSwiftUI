//
//  ListRowView.swift
//  ToDoListSwiftUI
//
//  Created by Oksana on 19.10.2022.
//

import SwiftUI

struct ListRowView: View {
    
    // MARK: - Properties
    
    let item: ItemModel
    
    // MARK: - Body
    
    var body: some View {
        HStack {
            Image(systemName: item.isCompleted ? "checkmark.circle" : "circle")
                .foregroundColor(item.isCompleted ? .green : .red)
            Text(item.title)
            Spacer()
        }
        .font(.title2)
        .padding(.vertical, 8)
    }
}

struct ListRowView_Previews: PreviewProvider {
    
    static var item1 = ItemModel(title: "It's a first item", isCompleted: false)
    static var item2 = ItemModel(title: "It's a second item", isCompleted: true)
    
    static var previews: some View {
        Group {
            ListRowView(item: item1)
            ListRowView(item: item2)
        }
       
    }
}
