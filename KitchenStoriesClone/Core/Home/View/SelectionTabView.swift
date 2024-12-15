//
//  SelectionTabView.swift
//  KitchenStoriesClone
//
//  Created by abdullah on 15.12.2024.
//

import SwiftUI

struct SelectionTabView: View {
    
    @Binding var selectedTab: Tab
    
    var animation: Namespace.ID
    
    var body: some View {
        HStack(spacing: 0) {
         
            ForEach(Tab.allCases, id: \.self) { tab in
                Button {
                    withAnimation {
                        selectedTab = tab
                    }
                } label : {
                    VStack(spacing: 12) {
                        if tab == .Foryou {
                            
                            HStack {
                                
                                Text(tab.rawValue)
                                    .font(.headline)
                                    .fontWeight(selectedTab == tab ? .semibold : .regular)
                                    .foregroundStyle(selectedTab == tab ? .primaryColor0 : .blackColor0)
                                
                                Text("New")
                                    .font(.footnote)
                                    .foregroundStyle(.whiteColor0)
                                    .padding(.horizontal, 6)
                                    .background(.newBadge, in: .rect(cornerRadius: 4))
                                
                            }
                        } else {
                            Text(tab.rawValue)
                                .font(.headline)
                                .fontWeight(selectedTab == tab ? .semibold : .regular)
                                .foregroundStyle(selectedTab == tab ? .primaryColor0 : .blackColor0)
                        }
                        
                        ZStack {
                            Rectangle()
                                .fill(.gray.opacity(0.1))
                                .frame(height: 2)
                            
                            if selectedTab == tab {
                                Rectangle()
                                    .fill(.primaryColor0)
                                    .frame(height: 2)
                                    .transition(.slide)
                                    .matchedGeometryEffect(id: "tab", in: animation )
                            }
                        }
                        
                    }
                }
            }
            
        }
    }
}

#Preview {
    @Previewable @Namespace var animation
    SelectionTabView(selectedTab: .constant(.Choice), animation: animation)
}
