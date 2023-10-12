//
//  ProfileTabs.swift
//  socialapp
//
//  Created by Vincent Fleming on 10/12/23.
//

import Foundation

enum ProfileTabs: Int, CaseIterable, Identifiable {
    case posts
    case replies
    
    var title: String {
        switch self {
            case .posts: return "Posts"
            case .replies: return "Replies"
        }
    }
    
    var id: Int {
        return self.rawValue
    }
}
