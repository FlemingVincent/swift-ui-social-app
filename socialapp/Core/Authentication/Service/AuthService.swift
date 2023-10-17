//
//  AuthService.swift
//  socialapp
//
//  Created by Vincent Fleming on 10/17/23.
//

import Foundation
import GoTrue

final class AuthController: ObservableObject {
  @Published var session: Session?

  var currentUserID: UUID {
    guard let id = session?.user.id else {
      preconditionFailure("Required session.")
    }

    return id
  }
}

class AuthService {
    
    static let shared = AuthService()
    
    @MainActor
    func signUp(email: String, password: String, name: String, username: String) async throws {
        do {
            let result = try await supabase.auth.signUp(email: email, password: password)
            print("LOG: User signed up \(String(describing: result.user?.id))")
        } catch {
            print("ERROR: \(error.localizedDescription)")
        }
    }
    
    @MainActor
    func signOut() async throws {
        do {
            try await supabase.auth.signOut()
            print("LOG: User signed out")
        } catch {
            print("ERROR: \(error.localizedDescription)")
        }
    }
    
    @MainActor
    func signIn(email: String, password: String) async throws {
        do {
            let result = try await supabase.auth.signIn(email: email, password: password)
            print("LOG: User signed up \(String(describing: result.user.id))")
        } catch {
            print("ERROR: \(error.localizedDescription)")
        }
    }
}
