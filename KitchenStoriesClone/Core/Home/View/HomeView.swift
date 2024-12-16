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

                            BestRecipesFromView(users: RecipeService.shared.getAllUser())
                                .padding(.horizontal)

                            FullWidthRecipeView(todayRecipe: RecipeService.shared.recipes[4], sectionName: "Today's Recipes")
                                .padding(.horizontal)
                                .padding(.top)

                            FullWidthRecipeView(todayRecipe: RecipeService.shared.recipes[3], sectionName: "What to Cook Tonight")
                                .padding(.horizontal)
                                .padding(.top)

                            QuickforYouView(quickForYouRecipes: RecipeService.shared.getSomeRecipe(startPoint: 6, endPoint: 15))
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

struct QuickforYouView: View {

    var quickForYouRecipes: [Recipe]
    var body: some View {
        VStack {
            Text("Quick For You")
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
                .padding(.horizontal,14)
                .padding(.bottom, 14)
        }
    }
}

#Preview {

    HomeView()

}
