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
                    .foregroundColor(Color.tTitle)
                Text("tomoyaki")
                    .foregroundColor(Color.tTitle)
            }
            Spacer()
            Image("profile")
                .resizable()
                .frame(width: 60, height: 60)
                .clipShape(/*@START_MENU_TOKEN@*/Circle()/*@END_MENU_TOKEN@*/)
        }.padding()
        .background(Color.tBackground)
    }
}

struct UserView_Previews: PreviewProvider {
    static var previews: some View {
        Group{
            UserView()
            Circle()
        }
    }
}
