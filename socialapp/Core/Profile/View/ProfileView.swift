//
//  ProfileView.swift
//  socialapp
//
//  Created by Vincent Fleming on 10/12/23.
//

import SwiftUI

struct ProfileView: View {
    @State private var selectedTab: ProfileTabs = .posts
    @Namespace var animation
    
    private var tabBarWidth: CGFloat {
        let count = CGFloat(ProfileTabs.allCases.count)
        
        // ScreenWidth - Count - Padding
        return UIScreen.main.bounds.width / count - 20
    }
    
    var body: some View {
        ScrollView(showsIndicators: false) {
            VStack(spacing: 24) {
                HStack(alignment: .top) {
                    VStack(alignment: .leading, spacing: 8) {
                        VStack(alignment: .leading, spacing: 4) {
                            Text("Full Name")
                                .font(.title2)
                                .fontWeight(.semibold)
                            
                            Text("username")
                                .font(.subheadline)
                        }
                        
                        Text("Bio")
                            .font(.footnote)
                        
                        Text("7 followers")
                            .font(.caption)
                            .foregroundColor(.gray)
                    }
                    
                    Spacer()
                    
                    AvatarComponent()
                }
                
                Button {
                    
                } label: {
                    Text("Follow")
                        .font(.subheadline)
                        .fontWeight(.semibold)
                        .foregroundColor(.white)
                        .frame(width: 352, height: 32)
                        .background(.black)
                        .cornerRadius(8)
                }
                
                
                VStack {
                    HStack {
                        ForEach(ProfileTabs.allCases) { tab in
                            VStack {
                                Text(tab.title)
                                    .font(.subheadline)
                                    .fontWeight(selectedTab == tab ? .semibold : .regular)
                                
                                if selectedTab == tab {
                                    Rectangle()
                                        .foregroundColor(.black)
                                        .frame(width: tabBarWidth, height: 1)
                                        .matchedGeometryEffect(id: "item", in: animation)
                                } else {
                                    Rectangle()
                                        .foregroundColor(.clear)
                                        .frame(width: tabBarWidth, height: 1)
                                }
                            }
                            .onTapGesture {
                                withAnimation(.spring()) {
                                    selectedTab = tab // This line was missing
                                }
                            }
                        }
                    }
                    
                    ForEach(0 ... 10, id: \.self) { post in
                        PostComponent()
                    }
                }
                .padding(.vertical, 8)
                
            }
        }
        .padding(.horizontal)
    }
}

#Preview {
    ProfileView()
}
