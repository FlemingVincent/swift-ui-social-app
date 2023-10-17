//
//  RegistrationView.swift
//  socialapp
//
//  Created by Vincent Fleming on 10/11/23.
//

import SwiftUI

struct RegistrationView: View {
    @State var viewModel = RegistrationViewModel()
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
                TextField("Enter your name", text: $viewModel.name)
                    .modifier(TextFieldModifier())
                
                TextField("Enter your username", text: $viewModel.username)
                    .autocorrectionDisabled(true)
                    .autocapitalization(/*@START_MENU_TOKEN@*/.none/*@END_MENU_TOKEN@*/)
                    .modifier(TextFieldModifier())
                
                TextField("Enter your email", text: $viewModel.email)
                    .autocapitalization(/*@START_MENU_TOKEN@*/.none/*@END_MENU_TOKEN@*/)
                    .modifier(TextFieldModifier())
                
                SecureField("Enter your password", text: $viewModel.password)
                    .modifier(TextFieldModifier())
            }
            
            Button {
                Task {
                    try await viewModel.createAccount()
                }
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
