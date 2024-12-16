//
//  RecipeCardNameRowView.swift
//  KitchenStoriesClone
//
//  Created by abdullah on 16.12.2024.
//

import SwiftUI

struct RecipeCardNameRowView: View {
    var recipe: Recipe

    var body: some View {
        ZStack(alignment: .bottomLeading) {
            Image(recipe.imgUrl)
                .resizable()
                .scaledToFill()
                .frame(width: 230, height: 260)
                .clipShape(.rect(cornerRadius: 14))

            RoundedRectangle(cornerRadius: 14)
                .fill(.blackColor0.opacity(0.15))

            Text(recipe.name)
                .font(.title3)
                .fontWeight(.semibold)
                .foregroundStyle(.whiteColor0)
                .frame(width: 200, alignment: .leading)
                .padding(.horizontal, 14)
                .padding(.bottom, 14)
        }
    }
}
