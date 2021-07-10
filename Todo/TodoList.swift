//
//  TodoList.swift
//  Todo
//
//  Created by Tomoya Kitazawa on 2021/07/10.
//

import SwiftUI
import CoreData

struct TodoList: View {
    
    @FetchRequest(
        sortDescriptors: [NSSortDescriptor(keyPath: \TodoEntity.time,
                                           ascending: true)],
        animation: .default)
    var todoList: FetchedResults<TodoEntity>
    
    let category: TodoEntity.Category
    
    var body: some View {
        List {
            ForEach(todoList) { todo in
                Text(todo.task ?? "no title")
            }
        }
    }
}

struct TodoList_Previews: PreviewProvider {Ω
    
    static var previews: some View {
        TodoList(category: .ImpUrg_1st)
    }
}
