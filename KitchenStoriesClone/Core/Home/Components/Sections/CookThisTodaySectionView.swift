//
//  CookThisTodaySectionView.swift
//  KitchenStoriesClone
//
//  Created by abdullah on 16.12.2024.
//

import SwiftUI

struct CookThisTodaySectionView: View {

    let recipe: Recipe 
    
    var sectionName: String
    var editButtonName: String
    var sectionSubtitle1: String
    var sectionSubtitle2: String
    
    var body: some View {
        VStack {
            HStack {
                Text(sectionName)
                    .font(.title)
                    .fontWeight(.semibold)
                    .frame(maxWidth: .infinity, alignment: .leading)

                Button {} label: {
                    Text(editButtonName)
                        .font(.subheadline)
                        .fontWeight(.semibold)
                        .foregroundStyle(.primaryColor0)
                }

            }.padding(.bottom, 20)

            VStack {
                HStack {
                    Text(sectionSubtitle1)
                        .font(.title3)
                        .fontWeight(.semibold)

                    Image(systemName: "info.circle")
                        .foregroundStyle(.blackColor0.opacity(0.6))
                }.frame(maxWidth: .infinity, alignment: .leading)

                Text(sectionSubtitle2)
                    .font(.subheadline)
                    .foregroundStyle(.blackColor0.opacity(0.7))
                    .frame(maxWidth: .infinity, alignment: .leading)

            }

            RecipeFillWidthRowView(recipe: recipe)
        }
    }
}


