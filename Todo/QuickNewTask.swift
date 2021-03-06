//
//  QuickNewTask.swift
//  Todo
//
//  Created by Tomoya Kitazawa on 2021/07/10.
//

import SwiftUI

struct QuickNewTask: View {
    var category: TodoEntity.Category
    
    @State var newTask: String = ""
    
    fileprivate func addNewTask(){
        self.newTask = ""
    }
    
    fileprivate func cancelTask(){
        self.newTask = ""
    }
    
    var body: some View {
        HStack {
            TextField("新しいタスク", text: $newTask) {
                self.addNewTask()
            }.textFieldStyle(RoundedBorderTextFieldStyle())
            Button(action: {self.addNewTask()}) {
                Text("追加")
            }
            Button(action: {self.cancelTask()}) {
                Text("Cancel")
                    .foregroundColor(.red)
            }
        }
    }
}

struct QuickNewTask_Previews: PreviewProvider {
    static var previews: some View {
        QuickNewTask(category: .ImpUrg_1st)
    }
}
