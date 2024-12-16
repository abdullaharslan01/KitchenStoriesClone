//
//  HomeView.swift
//  KitchenStoriesClone
//
//  Created by abdullah on 15.12.2024.
//

import SwiftUI


struct HomeView: View {

   
    @Namespace var animation

    
    @State private var vm = HomeViewModel()
    
    var width = UIScreen.main.bounds.width

    var body: some View {
        NavigationStack {
            VStack {
                SelectionTabView(selectedTab: $vm.selectedTab, animation: animation)

                if vm.selectedTab == .Choice {

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
            ChoiceSectionBannerRecipeView(recipe: vm.bannerRecipe)
            Group {
                
                LatesRecipesView(latesRecipes: vm.latesRecipes, sectionName: ConstantStrings.Choice.ourLatesRecipes.rawValue, seeAll: ConstantStrings.Choice.seeAll.rawValue)
              
                BestRecipesFromView(users: vm.bestRecipesFromView, sectionName: ConstantStrings.Choice.exploreBestRecipesFrom.rawValue)
                    
                
                FullWidthRecipeView(todayRecipe: vm.todayRecipe, sectionName: ConstantStrings.Choice.todayRecipes.rawValue)
                    
                
                FullWidthRecipeView(todayRecipe: vm.whatToCookToNightRecipe, sectionName: ConstantStrings.Choice.whatToCookToNight.rawValue)
                   
                
                QuickforYouSectionView(quickForYouRecipes: vm.quickForYouRecipes , sectionName: ConstantStrings.Choice.quickForYou.rawValue)
                    .padding(.bottom, 20)
                    
            }.padding(.horizontal, 10)
                .padding(.top, 15)
        }
    }
    var forYouTabView: some View
    {
        VStack {
            CookThisTodaySectionView(recipe: vm.cookThisTodayRecipe,sectionName: ConstantStrings.ForYou.forYou.rawValue, editButtonName: ConstantStrings.ForYou.edit.rawValue, sectionSubtitle1: ConstantStrings.ForYou.cookThisToday.rawValue, sectionSubtitle2: ConstantStrings.ForYou.recipeofTheDay.rawValue)
                .padding(.vertical, 30)

            InSeasonSectionView(recipe: vm.inSeasonSectionRecipes,sectionTitle: ConstantStrings.ForYou.inSeason.rawValue, sectionSubtitle: ConstantStrings.ForYou.basedOnSeasonalIngredients.rawValue)
                .padding(.bottom, 20)
        }.padding(.horizontal,10)
    }
}

