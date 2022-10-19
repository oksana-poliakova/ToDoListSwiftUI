//
//  ListView.swift
//  ToDoListSwiftUI
//
//  Created by Oksana on 19.10.2022.
//

import SwiftUI

struct ListView: View {
    
    // MARK: - Properties
    
    @State var items: [ItemModel] = [
        ItemModel(title: "First item", isCompleted: false),
        ItemModel(title: "Second item", isCompleted: true),
        ItemModel(title: "Third item", isCompleted: false)
    ]
    
    // MARK: - Body
    
    var body: some View {
        List {
            ForEach(items) { item in
                ListRowView(item: item)
            }
        }
        .listStyle(.plain)
        .navigationTitle("ToDo List 📝")
        .navigationBarItems(
            leading: EditButton(),
            trailing:
                NavigationLink("Add", destination: AddView())
        )
    }
}

struct ListView_Previews: PreviewProvider {
    static var previews: some View {
        NavigationView {
            ListView()
        }
    }
}


