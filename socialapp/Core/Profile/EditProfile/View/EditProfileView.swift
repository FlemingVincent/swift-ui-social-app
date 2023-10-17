//
//  EditProfileView.swift
//  socialapp
//
//  Created by Vincent Fleming on 10/17/23.
//

import SwiftUI

struct EditProfileView: View {
    @State private var bio = ""
    @State private var link = ""
    @State private var isPrivate = false
    
    var body: some View {
        NavigationStack {
            ZStack {
                Color(.systemGroupedBackground)
                    .edgesIgnoringSafeArea([.bottom, .horizontal])
                
                VStack {
                    HStack {
                        VStack(alignment: .leading) {
                            Text("Name")
                                .fontWeight(.semibold)
                            
                            Text("Test User")
                        }
                        
                        Spacer()
                        
                        AvatarComponent()
                    }
                    
                    Divider()
                    
                    VStack(alignment: .leading) {
                        Text("Bio")
                            .fontWeight(.semibold)
                        
                        TextField("Enter your bio", text: $bio, axis: .vertical)
                    }
                    
                    Divider()
                    
                    VStack(alignment: .leading) {
                        Text("Link")
                            .fontWeight(.semibold)
                        
                        TextField("Add link", text: $link)
                    }
                    
                    Divider()
                    
                    Toggle("Private Profile", isOn: $isPrivate)
                        .fontWeight(.semibold)
                }
                .font(.footnote)
                .padding()
                .background(.white)
                .cornerRadius(8)
                .overlay {
                    RoundedRectangle(cornerRadius: 8)
                        .stroke(Color(.systemGray4), lineWidth: 1)
                }
                .padding()
            }
            .navigationTitle("Edit Profile")
            .navigationBarTitleDisplayMode(.inline)
            .toolbar {
                ToolbarItem(placement: .topBarLeading) {
                    Button("Cancel") {
                        
                    }
                    .font(.subheadline)
                    .foregroundColor(.black)
                }
                
                ToolbarItem(placement: .topBarTrailing) {
                    Button("Done") {
                        
                    }
                    .font(.subheadline)
                    .fontWeight(.semibold)
                    .foregroundColor(.black)
                }
            }
        }
    }
}

#Preview {
    EditProfileView()
}
