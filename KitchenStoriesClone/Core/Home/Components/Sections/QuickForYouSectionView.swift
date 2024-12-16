//
//  QuickForYouSectionView.swift
//  KitchenStoriesClone
//
//  Created by abdullah on 16.12.2024.
//

import SwiftUI

struct QuickforYouSectionView: View {

    var quickForYouRecipes: [Recipe]
    var sectionName: String
    var body: some View {
        VStack {
            Text(sectionName)
                .font(.title3)
                .fontWeight(.semibold)
                .frame(maxWidth: .infinity, alignment: .leading)

            ScrollView(.horizontal, showsIndicators: false) {
                LazyHStack(spacing: 12) {
                    ForEach(quickForYouRecipes) { recipe in
                        RecipeCardNameRowView(recipe: recipe)
                    }
                }

            }
        }
    }
}

