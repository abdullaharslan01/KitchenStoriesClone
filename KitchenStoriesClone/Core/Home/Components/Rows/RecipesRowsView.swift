//
//  RecipesRowsView.swift
//  KitchenStoriesClone
//
//  Created by abdullah on 16.12.2024.
//

import SwiftUI

struct RecipesRowsView: View {
    var recipe: Recipe

    var body: some View {

        VStack(alignment: .leading, spacing: 8) {

            RecipeImageWithInfo(recipe: recipe, size: .init(width: 300, height: 250))
            
            Text(recipe.name)
                .font(.subheadline)

            HStack {
                Image(recipe.userProfileUrl)
                    .resizable()
                    .scaledToFill()
                    .frame(width: 40, height: 40)
                    .clipShape(.circle)
                Text(recipe.userFullName)
            }

        }

    }
}

#Preview {
    RecipesRowsView(recipe: RecipeService.shared.recipes[0])
}
