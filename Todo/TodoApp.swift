//
//  TodoApp.swift
//  Todo
//
//  Created by Tomoya Kitazawa on 2021/07/03.
//

import SwiftUI

@main
struct TodoApp: App {
    let persistenceController = PersistenceController.shared

    var body: some Scene {
        WindowGroup {
            ContentView()
                .environment(\.managedObjectContext, persistenceController.container.viewContext)
        }
    }
}
