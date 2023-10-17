//
//  RegistrationViewModel.swift
//  socialapp
//
//  Created by Vincent Fleming on 10/17/23.
//

import Foundation

class RegistrationViewModel: ObservableObject {
    @Published var email = ""
    @Published var name = ""
    @Published var username = ""
    @Published var password = ""
    
    @MainActor
    func createAccount() async throws {
        try await AuthService.shared.signUp(
            email: email,
            password: password,
            name: name,
            username: name
        )
    }
    
    @MainActor func login() async throws {
        try await AuthService.shared.signIn(
            email: email,
            password: password
        )
    }
}
