//
//  TodoListApp.swift
//  TodoList
//
//  Created by Manoj Alwis on 18/07/2024.
//

import SwiftUI
/*
 MVVM Architecture
 Model - data point
 View - UI
 ViewModel - manages Models for View
 */

@main
struct TodoListApp: App {
    @StateObject  var listViewModel : ListViewModel = ListViewModel()
    
    var body: some Scene {
        WindowGroup {
            NavigationView{
                ListView()
            }
            .environmentObject(listViewModel)
        }
    }
}
