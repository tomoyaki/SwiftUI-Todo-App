//
//  CategoryView.swift
//  Todo
//
//  Created by Tomoya Kitazawa on 2021/07/10.
//

import SwiftUI

struct CategoryView: View {
    var category: TodoEntity.Category
    @State var numberOfTasks = 0
    var body: some View {
        VStack {
            VStack {
                Image(systemName: category.image())
                Text(category.toString())
                Text("・\(numberOfTasks)タスク")
            }
            Button(action: /*@START_MENU_TOKEN@*//*@PLACEHOLDER=Action@*/{}/*@END_MENU_TOKEN@*/) {
                Image(systemName: "plus")
            }
            Spacer()
        }
    }
}

struct CategoryView_Previews: PreviewProvider {
    static var previews: some View {
        VStack {
            CategoryView(category: .ImpUrg_1st,
                         numberOfTasks: 100)
            CategoryView(category: .ImpNUrg_2nd,
                         numberOfTasks: 100)
            CategoryView(category: .NImpUrg_3rd,
                         numberOfTasks: 100)
            CategoryView(category: .NImpNUrg_4th,
                         numberOfTasks: 100)
        }
        
    }
}
