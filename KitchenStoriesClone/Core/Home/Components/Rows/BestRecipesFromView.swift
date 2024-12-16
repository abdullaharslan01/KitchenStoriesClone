//
//  BestRecipesFromView.swift
//  KitchenStoriesClone
//
//  Created by abdullah on 16.12.2024.
//

import SwiftUI

struct BestRecipesFromView: View {
    
    var users:[User]
    
    var body: some View {
        VStack {
            Text("Explore the best recipes from")
                .font(.title3)
                .fontWeight(.semibold)
                .frame(maxWidth: .infinity, alignment: .leading)
                
            ScrollView(.horizontal, showsIndicators: false) {
                LazyHStack(spacing: 12) {
                    ForEach(users) { user in
                        
                        VStack {
                            Image(user.userProfileUrl)
                                .resizable()
                                .scaledToFill()
                                .frame(width: 80, height: 80)
                                .clipShape(.circle)
                            
                            Text(user.userFullName)
                                .font(.subheadline)
                                .frame(width: 80)
                                .lineLimit(2)
                                .multilineTextAlignment(.center)
                                .padding(.horizontal, 6)
                        }
                    }
                }
            }
        }
    }
}
