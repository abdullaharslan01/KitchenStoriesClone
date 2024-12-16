//
//  RecipeImageWithInfo.swift
//  KitchenStoriesClone
//
//  Created by abdullah on 16.12.2024.
//

import SwiftUI

struct RecipeImageWithInfo: View {
    let recipe: Recipe
    let size: CGSize

    init(recipe: Recipe, size: CGSize = .init(width: 230, height: 260)) {
        self.recipe = recipe
        self.size = size
    }

    var body: some View {
        ZStack {
            Image(recipe.imgUrl)
                .resizable()
                .scaledToFill()
                .frame(width: size.width, height: size.height)
                .clipShape(.rect(cornerRadius: 16))

            VStack {

                Text(recipe.duration)
                    .font(.footnote)
                    .padding(.vertical, 4)
                    .padding(.horizontal, 8)
                    .background(.durationBadge, in: .capsule)
                    .frame(maxWidth: .infinity, alignment: .leading)
                    .padding(.all, 12)
                Spacer()

                HStack {
                    Image(systemName: "heart")
                        .resizable()
                        .scaledToFill()
                        .frame(width: 14, height: 14)

                    Text(recipe.totalLikes)
                        .font(.subheadline)
                }.foregroundStyle(.blackColor0.opacity(0.7))
                    .padding(.vertical, 4)
                    .padding(.horizontal, 8)
                    .background(Color.whiteColor0, in: .capsule)
                    .frame(maxWidth: .infinity, alignment: .trailing)
                    .padding(.all, 12)

            }
        }
    }
}
