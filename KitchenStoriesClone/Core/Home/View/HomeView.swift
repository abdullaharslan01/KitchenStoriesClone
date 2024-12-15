//
//  HomeView.swift
//  KitchenStoriesClone
//
//  Created by abdullah on 15.12.2024.
//

import SwiftUI

struct HomeView: View {

    @State var selectedTab: Tab = .Choice
    @Namespace var animation

    var width = UIScreen.main.bounds.width

    var body: some View {
        NavigationStack {
            VStack {
                SelectionTabView(selectedTab: $selectedTab, animation: animation)

                if selectedTab == .Choice {

                    ScrollView {
                        VStack {
                            ChoiceSection1View(recipe: RecipeService.shared.recipes[0])

                            LatesRecipesView(latesRecipes: RecipeService.shared.getSomeRecipe(startPoint: 1, endPoint: 5))
                                .padding(.horizontal)
                        }
                    }

                } else {
                    ScrollView {
                        VStack {}
                    }
                }

            }

        }

    }
}


struct LatesRecipesView: View {

    var latesRecipes: [Recipe]

    var body: some View {
        VStack {

            HStack {
                Text("Our Latest Recipes")
                    .font(.title3)
                    .fontWeight(.semibold)
                    .frame(maxWidth: .infinity, alignment: .leading)

                Text("See all")
                    .font(.subheadline)
                    .foregroundStyle(.primaryColor0)
            }
            
            ScrollView(.horizontal, showsIndicators: false) {
                LazyHStack(spacing: 16) {
                    ForEach(latesRecipes) { recipe in
                        RecipesRowsView(recipe: recipe)
                    }
                }.padding()
            }
        }
    }
}


struct RecipesRowsView: View {
    var recipe: Recipe
    
    var body: some View {
        VStack {
            ZStack {
                Image(recipe.imgUrl)
                    .resizable()
                    .scaledToFill()
                    .frame(width: 230, height: 260)
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
}



#Preview {

    HomeView()

}
