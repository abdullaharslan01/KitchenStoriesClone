//
//  User.swift
//  KitchenStoriesClone
//
//  Created by abdullah on 15.12.2024.
//

import Foundation

struct UserResponse: Identifiable {
    var id = UUID()
    var userFullName: String
    var userProfileUrl: String
}

let userData: [UserResponse] = [
    UserResponse(userFullName: "John Smith", userProfileUrl: "profile1"),
    UserResponse(userFullName: "David Brown", userProfileUrl: "profile2"),
    UserResponse(userFullName: "Michael Green", userProfileUrl: "profile4"),
    UserResponse(userFullName: "Emily White", userProfileUrl: "profile3"),
    UserResponse(userFullName: "Sophia Grey", userProfileUrl: "profile5"),
    UserResponse(userFullName: "Olivia Black", userProfileUrl: "profile6")
]
