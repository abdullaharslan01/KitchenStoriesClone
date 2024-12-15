//
//  Recipe.swift
//  KitchenStoriesClone
//
//  Created by abdullah on 15.12.2024.
//

import Foundation

struct Recipe: Identifiable {
    var id = UUID()
    var name: String
    var imgUrl: String
    var type: String
    var totalLikes: String
    var duration: String
    var userFullName: String
    var userProfileUrl: String
}


