//
//  ContentView.swift
//  socialapp
//
//  Created by Vincent Fleming on 10/11/23.
//

import GoTrue
import SwiftUI

struct RootView: View {
    @State var authEvent: AuthChangeEvent?
    @EnvironmentObject var auth: AuthController
    
    var body: some View {
        Group {
            if authEvent == .signedOut {
                LoginView()
            } else {
                TabBarView()
            }
        }
        .task {
            for await event in supabase.auth.authEventChange {
                withAnimation {
                    authEvent = event
                }
                
                auth.session = try? await supabase.auth.session
            }
        }
    }
}

#Preview {
    RootView()
}
