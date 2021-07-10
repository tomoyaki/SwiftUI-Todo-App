//
//  CheckBox.swift
//  Todo
//
//  Created by Tomoya Kitazawa on 2021/07/10.
//

import SwiftUI

struct CheckBox: View {
    @Binding var checked: Bool
    var body: some View {
        Image(systemName: checked ?
            "checkmark.circle" : "circle")
            .onTapGesture {
                self.checked.toggle()
        }
    }
}

struct CheckBox_Previews: PreviewProvider {
    static var previews: some View {
        VStack {
            CheckBox(checked: .constant(false))
            CheckBox(checked: .constant(true))
        }
    }
}
