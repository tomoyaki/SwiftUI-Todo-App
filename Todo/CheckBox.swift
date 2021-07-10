//
//  CheckBox.swift
//  Todo
//
//  Created by Tomoya Kitazawa on 2021/07/10.
//

import SwiftUI

struct CheckBox: View {
    @State var checked: Bool = false
    var body: some View {
        Toggle(isOn: $checked){
        Text("Checkbox")
        }
    }
}

struct CheckBox_Previews: PreviewProvider {
    static var previews: some View {
        CheckBox()
    }
}
