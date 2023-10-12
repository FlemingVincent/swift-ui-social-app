//
//  AvatarComponent.swift
//  socialapp
//
//  Created by Vincent Fleming on 10/12/23.
//

import SwiftUI

struct AvatarComponent: View {
    var body: some View {
        Image("")
            .resizable()
            .scaledToFill()
            .frame(width: 40, height: 40)
            .clipShape(/*@START_MENU_TOKEN@*/Circle()/*@END_MENU_TOKEN@*/)
    }
}

#Preview {
    AvatarComponent()
}
