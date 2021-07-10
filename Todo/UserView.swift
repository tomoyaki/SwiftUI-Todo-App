//
//  UserView.swift
//  Todo
//
//  Created by Tomoya Kitazawa on 2021/07/10.
//

import SwiftUI

struct UserView: View {
    var body: some View {
        HStack {
            VStack(alignment: .leading) {
                Text("こんにちは")
                Text("tomoyaki")
            }
            Image("profile")
                .resizable()
                .frame(width: 60, height: 60)
        }
    }
}

struct UserView_Previews: PreviewProvider {
    static var previews: some View {
        UserView()
    }
}
