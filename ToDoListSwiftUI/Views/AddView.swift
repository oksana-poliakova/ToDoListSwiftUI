//
//  AddView.swift
//  ToDoListSwiftUI
//
//  Created by Oksana on 19.10.2022.
//

import SwiftUI

struct AddView: View {
    
    // MARK: - Properties
    
    @State var textFieldText: String = ""
    
    // MARK: - Body
    
    var body: some View {
        ScrollView {
            VStack {
                TextField("Type something here...", text: $textFieldText)
                    .padding(.horizontal)
                    .frame(height: 55)
                    .background(Color("lightGray"))
                    .cornerRadius(8)
                
                Button(action: {
                    
                }, label: {
                    Text("Save".uppercased())
                        .foregroundColor(.white)
                        .frame(height: 55)
                        .frame(maxWidth: .infinity)
                        .font(.headline )
                        .background(Color("blue"))
                        .cornerRadius(10)
                })
            }
            .padding(14)
        }
        .navigationTitle("Add an Item 🖊")
    }
}

struct AddView_Previews: PreviewProvider {
    static var previews: some View {
        NavigationView {
            AddView()
        }
    }
}
