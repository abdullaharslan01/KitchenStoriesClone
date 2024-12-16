//
//  ChoiceSection1View.swift
//  KitchenStoriesClone
//
//  Created by abdullah on 15.12.2024.
//

import SwiftUI

struct ChoiceSectionBannerRecipeView: View {

    let recipe: Recipe

    var body: some View {
        VStack {
            Image(recipe.imgUrl)
                .resizable()
                .scaledToFill()
                .containerRelativeFrame(.horizontal)
                .frame(height: 350)
                .clipped()

            VStack(alignment: .leading, spacing: 8) {
                Text(recipe.type)
                    .font(.subheadline)

                Text(recipe.name)
                    .font(.title)

                HStack {
                    Image(systemName: "heart")
                        .resizable()
                        .scaledToFill()
                        .frame(width: 14, height: 14)

                    Text(recipe.totalLikes)
                        .font(.subheadline)
                }.frame(maxWidth: .infinity, alignment: .trailing)

            }.padding(.all, 20)
                .frame(maxWidth: .infinity, alignment: .leading)
                .background(Color.card)
                .clipShape(.rect(cornerRadius: 14))
                .padding(.horizontal)
                .offset(x: 0, y: -30)

        }
    }
}

#Preview {
    ChoiceSectionBannerRecipeView(recipe: RecipeService.shared.recipes[0])
}
