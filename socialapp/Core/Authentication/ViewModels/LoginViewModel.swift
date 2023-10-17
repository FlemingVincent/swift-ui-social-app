//
//  LoginViewModel.swift
//  socialapp
//
//  Created by Vincent Fleming on 10/17/23.
//

import Foundation

class LoginViewModel: ObservableObject {
    @Published var email = ""
    @Published var password = ""
    
    @MainActor func login() async throws {
        try await AuthService.shared.signIn(
            email: email,
            password: password
        )
    }
}
