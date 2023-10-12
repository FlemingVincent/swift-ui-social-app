//
//  TabView.swift
//  socialapp
//
//  Created by Vincent Fleming on 10/11/23.
//

import SwiftUI

struct TabBarView: View {
    @State private var selectedTab = 0
    
    var body: some View {
        TabView(selection: $selectedTab) {
            Text("Feed View")
                .tabItem {
                    Image(systemName: selectedTab == 0 ? "house.fill" : "house")
                        .environment(\.symbolVariants, selectedTab == 0 ? .fill : .none)
                }
                .onAppear { selectedTab = 0 }
                .tag(0)
        }
        .tint(.black)
    }
}

#Preview {
    TabBarView()
}
