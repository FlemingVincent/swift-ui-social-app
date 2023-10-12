//
//  UserListItemComponent.swift
//  socialapp
//
//  Created by Vincent Fleming on 10/12/23.
//

import SwiftUI

struct UserComponent: View {
    var body: some View {
            HStack {
                AvatarComponent()
                
                VStack(alignment: .leading) {
                    Text("username")
                        .fontWeight(.semibold)
                    
                    Text("Full Name")
                }
                .font(.footnote)
                
                Spacer ()
                
                Text("Follow")
                    .font(.subheadline)
                    .fontWeight(.semibold)
                    .frame(width: /*@START_MENU_TOKEN@*/100/*@END_MENU_TOKEN@*/, height: 32)
                    .overlay {
                        RoundedRectangle(cornerRadius: 8)
                            .stroke(Color(.systemGray4), lineWidth: 1)
                    }
            }
            .padding(.horizontal)
    }
}

#Preview {
    UserComponent()
}
