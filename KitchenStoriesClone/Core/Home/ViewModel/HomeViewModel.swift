//
//  HomeViewModel.swift
//  KitchenStoriesClone
//
//  Created by abdullah on 16.12.2024.
//

import Foundation
import Observation

@Observable
class HomeViewModel: ObservableObject {
     var selectedTab: Tab = .Choice
    
    var bannerRecipe: Recipe = RecipeService.shared.recipes[12]
    
    var latesRecipes: [Recipe] = RecipeService.shared.getSomeRecipe(startPoint: 1, endPoint: 6)
    
    var bestRecipesFromView : [User] = RecipeService.shared.getAllUser()
    
    var todayRecipe: Recipe = RecipeService.shared.recipes[4]
    
    var whatToCookToNightRecipe: Recipe = RecipeService.shared.recipes[3]
    
    var quickForYouRecipes: [Recipe] = RecipeService.shared.getSomeRecipe(startPoint: 6, endPoint: 20)
    
    var cookThisTodayRecipe: Recipe = RecipeService.shared.recipes[1]
    
    var inSeasonSectionRecipes: [Recipe] = RecipeService.shared.getSomeRecipe(startPoint: 10, endPoint: 20)
        
    
}
