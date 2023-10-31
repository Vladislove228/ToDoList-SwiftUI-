//
//  ToDoList_SwiftUI_App.swift
//  ToDoList(SwiftUI)
//
//  Created by Владислав Квинто on 16/10/2023.
//

import FirebaseCore
import SwiftUI

@main
struct ToDoListSwiftUIApp: App {
    init () {
        FirebaseApp.configure()
    }
    var body: some Scene {
        WindowGroup {
            MainView()
        }
    }
}
