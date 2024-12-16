//
//  LatesRecipesView.swift
//  KitchenStoriesClone
//
//  Created by abdullah on 16.12.2024.
//

import SwiftUI


struct LatesRecipesView: View {

    var latesRecipes: [Recipe]
        
    var sectionName: String

    var seeAll: String
    var body: some View {
        VStack {

            HStack {
                Text(sectionName)
                    .font(.title3)
                    .fontWeight(.semibold)
                    .frame(maxWidth: .infinity, alignment: .leading)

                Text(seeAll)
                    .font(.subheadline)
                    .foregroundStyle(.primaryColor0)
            }

            ScrollView(.horizontal, showsIndicators: false) {
                LazyHStack(spacing: 16) {
                    ForEach(latesRecipes) { recipe in
                        RecipesRowsView(recipe: recipe)
                    }
                }
            }
        }
    }
}
