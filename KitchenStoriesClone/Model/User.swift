//
//  User.swift
//  KitchenStoriesClone
//
//  Created by abdullah on 15.12.2024.
//

import Foundation

struct User: Identifiable {
    var id = UUID()
    var userFullName: String
    var userProfileUrl: String
}
