//
//  ListRowView.swift
//  ToDoListSwiftUI
//
//  Created by Oksana on 19.10.2022.
//

import SwiftUI

struct ListRowView: View {
    
    // MARK: - Properties
    
    let title: String
    
    // MARK: - Body
    
    var body: some View {
        HStack {
            Image(systemName: "checkmark.circle")
            Text(title)
            Spacer()
        }
    }
}

struct ListRowView_Previews: PreviewProvider {
    static var previews: some View {
        ListRowView(title: "This is the first item!")
    }
}
