//
//  ToDoListSwiftUIApp.swift
//  ToDoListSwiftUI
//
//  Created by Oksana on 19.10.2022.
//

import SwiftUI

@main
struct ToDoListSwiftUIApp: App {
    
    @StateObject var listViewModel: ListViewModel = ListViewModel()
    
    var body: some Scene {
        WindowGroup {
            NavigationView {
                ListView()
            }
            // for the adaptivity for iPads
            .navigationViewStyle(StackNavigationViewStyle())
            .environmentObject(listViewModel)
        }
    }
}
