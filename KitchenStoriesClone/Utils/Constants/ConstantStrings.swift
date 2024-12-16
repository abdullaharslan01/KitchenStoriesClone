//
//  ConstantStrings.swift
//  KitchenStoriesClone
//
//  Created by abdullah on 16.12.2024.
//

import Foundation

struct ConstantStrings {
    enum Choice: String {
        case ourLatesRecipes = "Our Lates Recipes"
        case seeAll = "See all"
        case exploreBestRecipesFrom = "Explore the best recipes from"
        case todayRecipes = "Today's Recipes"
        case whatToCookToNight = "What to Cook Tonight"
        case quickForYou = "Quick For You"
    }
    
    enum ForYou: String {
        case forYou = "For You"
        case edit = "Edit"
        case cookThisToday = "Cook This Today"
        case recipeofTheDay = "Recipe of the day"
        case inSeason = "In Season"
        case basedOnSeasonalIngredients = "Based on seasonal ingredients"
    }
}
