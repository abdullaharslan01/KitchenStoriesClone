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
            VStack(spacing: 8) {

                        Text(recipe.name)
                            .font(.subheadline)
                            .frame(maxWidth: .infinity, alignment: .leading)
                            .padding(.horizontal, 6)

                        HStack {
                            Image(recipe.userProfileUrl)
                                .resizable()
                                .scaledToFill()
                                .frame(width: 40, height: 40)
                                .clipShape(.circle)
                            Text(recipe.userFullName).frame(maxWidth: .infinity, alignment: .leading)
                        }

                    }
            
        }
    }
}

