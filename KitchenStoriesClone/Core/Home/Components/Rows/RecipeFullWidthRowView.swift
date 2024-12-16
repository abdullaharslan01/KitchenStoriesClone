//
//  RecipeFullWidthRowView.swift
//  KitchenStoriesClone
//
//  Created by abdullah on 16.12.2024.
//

import SwiftUI

struct FullWidthRecipeView: View {
    
    var todayRecipe: Recipe
    let sectionName: String
    
    var body: some View {
        VStack {
            Text(sectionName)
                .font(.title3)
                .fontWeight(.semibold)
                .frame(maxWidth: .infinity, alignment: .leading)
            
            RecipeFillWidthRowView(recipe: todayRecipe)
        }
    }
}


struct RecipeFillWidthRowView: View {
    
    
    var recipe: Recipe
    var body: some View {
        VStack {
            RecipeImageWithInfo(recipe: recipe, size: .init(width: UIScreen.main.bounds.width - 32, height: 260))
            ContentInfoView(recipe: recipe)
            
        }
    }
}

