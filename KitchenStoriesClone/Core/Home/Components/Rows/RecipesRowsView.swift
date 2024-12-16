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
        VStack {

            RecipesRowsView(recipe: recipe)
            ContentInfoView(recipe: recipe)

        }
    }
}

struct ContentInfoView: View {
    let recipe: Recipe
    var body: some View {
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
