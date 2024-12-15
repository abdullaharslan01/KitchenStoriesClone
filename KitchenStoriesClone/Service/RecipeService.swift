//
//  RecipeService.swift
//  KitchenStoriesClone
//
//  Created by abdullah on 15.12.2024.
//

import Foundation

class RecipeService {
    static let shared = RecipeService()
    private init(){ }
    
    
     let recipes: [Recipe] = [
        Recipe(
           
            name: "Pancakes with Syrup",
            imgUrl: "pancake",
            type: "Breakfast",
            totalLikes: "2.1K",
            duration: "15min",
            userFullName: "John Smith",
            userProfileUrl: "profile1"
        ),
        Recipe(
            name: "Cooked Seafoods",
            imgUrl: "seafood",
            type: "Dinner",
            totalLikes: "3.4K",
            duration: "40min",
            userFullName: "David Brown",
            userProfileUrl: "profile2"
        ),
        Recipe(
            name: "Steak Food",
            imgUrl: "steak",
            type: "Lunch",
            totalLikes: "4.5K",
            duration: "1h",
            userFullName: "Michael Green",
            userProfileUrl: "profile4"
        ),
        Recipe(
            name: "Salad",
            imgUrl: "salad",
            type: "Vegan",
            totalLikes: "1.8K",
            duration: "10min",
            userFullName: "Emily White",
            userProfileUrl: "profile3"
        ),
        Recipe(
            name: "Pastry and Boiled Egg",
            imgUrl: "pastry",
            type: "Breakfast",
            totalLikes: "2.7K",
            duration: "20min",
            userFullName: "Sophia Grey",
            userProfileUrl: "profile5"
        ),
        Recipe(
            name: "Grilled Chicken",
            imgUrl: "chicken",
            type: "Dinner",
            totalLikes: "3.2K",
            duration: "35min",
            userFullName: "Olivia Black",
            userProfileUrl: "profile6"
        ),
        Recipe(
            name: "Eggs with Bread",
            imgUrl: "egg",
            type: "Breakfast",
            totalLikes: "1.9K",
            duration: "12min",
            userFullName: "John Smith",
            userProfileUrl: "profile1"
        ), Recipe(
            name: "Grilled Chicken with Herbs",
            imgUrl: "chicken",
            type: "Dinner",
            totalLikes: "2.5K",
            duration: "30min",
            userFullName: "David Brown",
            userProfileUrl: "profile2"
        ),
        Recipe(
            name: "Seafood Paella",
            imgUrl: "seafood",
            type: "Gourmet",
            totalLikes: "4.1K",
            duration: "50min",
            userFullName: "Sophia Grey",
            userProfileUrl: "profile5"
        ),
        Recipe(
            name: "Pancake with Sliced Strawberry",
            imgUrl: "pancake",
            type: "Dessert",
            totalLikes: "3.9K",
            duration: "20min",
            userFullName: "Emily White",
            userProfileUrl: "profile3"
        ),
        Recipe(
            name: "Classic Steak",
            imgUrl: "steak",
            type: "Lunch",
            totalLikes: "5.2K",
            duration: "1h",
            userFullName: "Michael Green",
            userProfileUrl: "profile4"
        ), Recipe(
            name: "Fluffy Pancakes with Maple Syrup",
            imgUrl: "pancake",
            type: "Breakfast",
            totalLikes: "3.2K",
            duration: "15min",
            userFullName: "John Smith",
            userProfileUrl: "profile1"
        ),
        Recipe(
            name: "Grilled Salmon and Veggies",
            imgUrl: "seafood",
            type: "Healthy Dinner",
            totalLikes: "4.8K",
            duration: "30min",
            userFullName: "David Brown",
            userProfileUrl: "profile2"
        ),
        Recipe(
            name: "Juicy Ribeye Steak",
            imgUrl: "steak",
            type: "Lunch",
            totalLikes: "5.4K",
            duration: "1h",
            userFullName: "Michael Green",
            userProfileUrl: "profile4"
        ),
        Recipe(
            name: "Caesar Salad with Parmesan",
            imgUrl: "salad",
            type: "Light Meal",
            totalLikes: "2.3K",
            duration: "10min",
            userFullName: "Emily White",
            userProfileUrl: "profile3"
        ), Recipe(
            name: "Eggs Benedict with Hollandaise Sauce",
            imgUrl: "egg",
            type: "Breakfast",
            totalLikes: "1.9K",
            duration: "20min",
            userFullName: "Sophia Grey",
            userProfileUrl: "profile5"
        ),
        Recipe(
            name: "Garlic Butter Shrimp",
            imgUrl: "seafood",
            type: "Dinner",
            totalLikes: "4.3K",
            duration: "25min",
            userFullName: "Olivia Black",
            userProfileUrl: "profile6"
        ),
        Recipe(
            name: "Chicken Caesar Wrap",
            imgUrl: "chicken",
            type: "Lunch",
            totalLikes: "3.7K",
            duration: "20min",
            userFullName: "John Smith",
            userProfileUrl: "profile1"
        ),
        Recipe(
            name: "Berry Pancakes",
            imgUrl: "pancake",
            type: "Brunch",
            totalLikes: "2.6K",
            duration: "25min",
            userFullName: "David Brown",
            userProfileUrl: "profile2"
        ),
        Recipe(
            name: "Shrimp Scampi",
            imgUrl: "seafood",
            type: "Gourmet Dinner",
            totalLikes: "5.0K",
            duration: "40min",
            userFullName: "Michael Green",
            userProfileUrl: "profile4"
        ),
        Recipe(
            name: "Grilled Chicken Salad",
            imgUrl: "salad",
            type: "Healthy Meal",
            totalLikes: "3.1K",
            duration: "15min",
            userFullName: "Emily White",
            userProfileUrl: "profile3"
        ),
        Recipe(
            name: "Chocolate Croissant with Coffee",
            imgUrl: "pastry",
            type: "Breakfast",
            totalLikes: "3.9K",
            duration: "10min",
            userFullName: "Sophia Grey",
            userProfileUrl: "profile5"
        ),
        Recipe(
            name: "Seared Tuna Steak",
            imgUrl: "seafood",
            type: "Dinner",
            totalLikes: "4.2K",
            duration: "35min",
            userFullName: "Olivia Black",
            userProfileUrl: "profile6"
        ),
        Recipe(
            name: "Classic Ribeye Steak",
            imgUrl: "steak",
            type: "Lunch",
            totalLikes: "6.1K",
            duration: "50min",
            userFullName: "John Smith",
            userProfileUrl: "profile1"
        ), Recipe(
            name: "Savory Omelette with Bread",
            imgUrl: "egg",
            type: "Breakfast",
            totalLikes: "1.8K",
            duration: "12min",
            userFullName: "David Brown",
            userProfileUrl: "profile2"
        ),
        Recipe(
            name: "Steamed Lobster Tails",
            imgUrl: "seafood",
            type: "Gourmet Dinner",
            totalLikes: "4.6K",
            duration: "1h",
            userFullName: "Michael Green",
            userProfileUrl: "profile4"
        ),
        Recipe(
            name: "Fresh Garden Salad",
            imgUrl: "salad",
            type: "Vegan Meal",
            totalLikes: "2.2K",
            duration: "10min",
            userFullName: "Emily White",
            userProfileUrl: "profile3"
        ), Recipe(
            name: "Chicken Alfredo Pasta",
            imgUrl: "chicken",
            type: "Italian Dinner",
            totalLikes: "3.8K",
            duration: "45min",
            userFullName: "Sophia Grey",
            userProfileUrl: "profile5"
        ),
        Recipe(
            name: "Herbed Grilled Shrimp",
            imgUrl: "seafood",
            type: "Dinner",
            totalLikes: "4.7K",
            duration: "30min",
            userFullName: "Olivia Black",
            userProfileUrl: "profile6"
        ),
        Recipe(
            name: "Steak and Potato Plate",
            imgUrl: "steak",
            type: "Lunch",
            totalLikes: "5.5K",
            duration: "1h",
            userFullName: "John Smith",
            userProfileUrl: "profile1"
        ),
        Recipe(
            name: "Avocado Toast with Eggs",
            imgUrl: "egg",
            type: "Breakfast",
            totalLikes: "2.0K",
            duration: "15min",
            userFullName: "David Brown",
            userProfileUrl: "profile2"
        ),
        Recipe(
            name: "Pan-Seared Salmon",
            imgUrl: "seafood",
            type: "Dinner",
            totalLikes: "4.5K",
            duration: "35min",
            userFullName: "Michael Green",
            userProfileUrl: "profile4"
        ),
        Recipe(
            name: "Grilled Veggie Salad",
            imgUrl: "salad",
            type: "Light Meal",
            totalLikes: "3.0K",
            duration: "20min",
            userFullName: "Emily White",
            userProfileUrl: "profile3"
        )
    ]
    
     func getSomeRecipe(startPoint:Int, endPoint: Int) -> [Recipe] {
        var recipes = [Recipe]()
        
        for i in startPoint ..< endPoint + 1{
            recipes.append(self.recipes[i])
        }
        
        return recipes
    }
}
