//
//  ThreadComponent.swift
//  socialapp
//
//  Created by Vincent Fleming on 10/12/23.
//

import SwiftUI

struct PostComponent: View {
    var body: some View {
        VStack {
            HStack(alignment: .top, spacing: 8) {
                AvatarComponent()
                
                VStack(alignment: .leading, spacing: 4) {
                    HStack {
                        Text("username")
                            .font(.footnote)
                            .fontWeight(.semibold)
                        
                        Spacer()
                        
                        Text("2m")
                            .font(.caption)
                            .foregroundColor(Color(.systemGray))
                        
                        Button {
                            
                        } label: {
                            Image(systemName: "ellipsis")
                                .foregroundColor(Color(.darkGray))
                        }
                    }
                        
                    Text("Caption")
                        .font(.footnote)
                        .multilineTextAlignment(/*@START_MENU_TOKEN@*/.leading/*@END_MENU_TOKEN@*/)
                    
                    HStack(spacing: 16) {
                        Button {
                            
                        } label: {
                            Image(systemName: "heart")
                        }
                        
                        Button {
                            
                        } label: {
                            Image(systemName: "bubble.right")
                        }
                        
                        Button {
                            
                        } label: {
                            Image(systemName: "arrow.rectanglepath")
                        }
                        
                        Button {
                            
                        } label: {
                            Image(systemName: "paperplane")
                        }
                    }
                    .foregroundColor(.black)
                    .padding(.vertical, 8)
                }
            }
            
            Divider()
            
        }
        .padding()
    }
}

#Preview {
    PostComponent()
}
