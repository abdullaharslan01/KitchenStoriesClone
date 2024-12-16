//
//  InSeasonSectionView.swift
//  KitchenStoriesClone
//
//  Created by abdullah on 16.12.2024.
//

import SwiftUI

struct InSeasonSectionView: View {
    
    var recipe: [Recipe]
    
    var sectionTitle: String
    var sectionSubtitle: String
    var body: some View {
        VStack {
            VStack {
                HStack {
                    Text(sectionTitle)
                        .font(.title3)
                        .fontWeight(.semibold)
                    
                    Image(systemName: "info.circle")
                        .foregroundStyle(.blackColor0.opacity(0.6))
                }.frame(maxWidth: .infinity, alignment: .leading)
                
                Text(sectionSubtitle)
                    .font(.subheadline)
                    .foregroundStyle(.blackColor0.opacity(0.7))
                    .frame(maxWidth: .infinity, alignment: .leading)
                
            }
            
            ScrollView(.horizontal, showsIndicators: false) {
                LazyHStack(spacing: 12) {
                    ForEach(recipe) { recipe in
                        RecipesRowsView(recipe: recipe)
                    }
                }
            }
            
        }
    }
}

