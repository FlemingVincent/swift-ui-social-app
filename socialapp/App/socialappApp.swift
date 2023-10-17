//
//  socialappApp.swift
//  socialapp
//
//  Created by Vincent Fleming on 10/11/23.
//

import Supabase
import SwiftUI

@main
struct socialappApp: App {
    @State var supabaseInitialized = false
    @StateObject var auth = AuthController()
    
    var body: some Scene {
        WindowGroup {
            main
        }
    }
    
    @ViewBuilder
    var main: some View {
        if supabaseInitialized {
            RootView()
                .environmentObject(auth)
        } else {
            ProgressView()
                .task {
                    await supabase.auth.initialize()
                    supabaseInitialized = true
                }
        }
    }
}

let supabase = SupabaseClient(
    supabaseURL: Secrets.supabaseURL,
    supabaseKey: Secrets.supabaseAnonKey
)
