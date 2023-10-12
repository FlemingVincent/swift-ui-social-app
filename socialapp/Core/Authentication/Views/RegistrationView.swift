//
//  RegistrationView.swift
//  socialapp
//
//  Created by Vincent Fleming on 10/11/23.
//

import SwiftUI

struct RegistrationView: View {
    @State private var email = ""
    @State private var name = ""
    @State private var username = ""
    @State private var password = ""
    @Environment(\.dismiss) var dismiss
    
    var body: some View {
        VStack {
            Spacer()
            
            Image("image")
                .resizable()
                .scaledToFit()
                .frame(width: 128, height: 128)
                .padding()
            
            VStack() {
                TextField("Enter your name", text: $name)
                    .modifier(TextFieldModifier())
                
                TextField("Enter your username", text: $username)
                    .modifier(TextFieldModifier())
                
                TextField("Enter your email", text: $email)
                    .autocapitalization(/*@START_MENU_TOKEN@*/.none/*@END_MENU_TOKEN@*/)
                    .modifier(TextFieldModifier())
                
                SecureField("Enter your password", text: $password)
                    .modifier(TextFieldModifier())
            }
            
            Button {
                
            } label: {
                Text("Sign Up")
                    .font(.subheadline)
                    .fontWeight(.semibold)
                    .foregroundColor(.white)
                    .frame(width: 352, height: 48)
                    .background(.black)
                    .cornerRadius(8)
            }.padding(.vertical)
            
            Spacer()
            
            Divider()
            
            Button {
                dismiss()
            } label: {
                HStack(spacing: 4) {
                    Text("Already have an account?")
                    
                    Text("Login")
                        .fontWeight(.semibold)
                }
                .foregroundColor(.black)
                .font(.footnote)
            }.padding(.vertical, 16)
        }
    }
}

#Preview {
    RegistrationView()
}
