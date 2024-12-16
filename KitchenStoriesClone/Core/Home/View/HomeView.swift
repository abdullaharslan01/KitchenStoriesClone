//
//  HomeView.swift
//  KitchenStoriesClone
//
//  Created by abdullah on 15.12.2024.
//

import SwiftUI


struct HomeView: View {

    @State var selectedTab: Tab = .Foryou
    @Namespace var animation

    var width = UIScreen.main.bounds.width

    var body: some View {
        NavigationStack {
            VStack {
                SelectionTabView(selectedTab: $selectedTab, animation: animation)

                if selectedTab == .Choice {

                    ScrollView(showsIndicators: false) {
                        choiceTabView

                    }.transition(.move(edge: .leading))

                } else {
                    ScrollView(showsIndicators: false) {
                        forYouTabView
                    }.transition(.move(edge: .trailing))
                }

            }

        }

    }
}

extension HomeView {
    var choiceTabView: some View {
        VStack {
            ChoiceSectionBannerRecipeView(recipe: RecipeService.shared.recipes[12])
            Group {
                
                LatesRecipesView(latesRecipes: RecipeService.shared.getSomeRecipe(startPoint: 1, endPoint: 6), sectionName: ConstantStrings.Choice.ourLatesRecipes.rawValue, seeAll: ConstantStrings.Choice.seeAll.rawValue)
              
                BestRecipesFromView(users: RecipeService.shared.getAllUser(), sectionName: ConstantStrings.Choice.exploreBestRecipesFrom.rawValue)
                    
                
                FullWidthRecipeView(todayRecipe: RecipeService.shared.recipes[4], sectionName: ConstantStrings.Choice.todayRecipes.rawValue)
                    
                
                FullWidthRecipeView(todayRecipe: RecipeService.shared.recipes[3], sectionName: ConstantStrings.Choice.whatToCookToNight.rawValue)
                   
                
                QuickforYouSectionView(quickForYouRecipes: RecipeService.shared.getSomeRecipe(startPoint: 6, endPoint: 20), sectionName: ConstantStrings.Choice.quickForYou.rawValue)
                    .padding(.bottom, 20)
                    
            }.padding(.horizontal, 10)
                .padding(.top, 15)
        }
    }
    var forYouTabView: some View
    {
        VStack {
            CookThisTodaySectionView(sectionName: ConstantStrings.ForYou.forYou.rawValue, editButtonName: ConstantStrings.ForYou.edit.rawValue, sectionSubtitle1: ConstantStrings.ForYou.cookThisToday.rawValue, sectionSubtitle2: ConstantStrings.ForYou.recipeofTheDay.rawValue)
                .padding(.vertical, 30)

            InSeasonSectionView(recipe: RecipeService.shared.getSomeRecipe(startPoint: 10, endPoint: 20),sectionTitle: ConstantStrings.ForYou.inSeason.rawValue, sectionSubtitle: ConstantStrings.ForYou.basedOnSeasonalIngredients.rawValue)
                .padding(.bottom, 20)
        }.padding(.horizontal,10)
    }
}

#Preview {

    HomeView()

}
