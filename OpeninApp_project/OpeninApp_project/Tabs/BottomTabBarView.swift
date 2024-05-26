//
//  BottomTabBarView.swift
//  OpeninApp_project
//
//  Created by Vyom on 01/05/24.
//

import SwiftUI

struct BottomTabBarView: View {
    @EnvironmentObject var linkTabVM: LinkTabVM
    @State var currentTabSelected: Int = 0
    
    var body: some View {
        TabView(selection: $currentTabSelected) {
            DasboardView()
                .tag(0)
                
            CoursesTabView()
                .tag(1)
               
            AddTabView()
                .tag(2)
                
            CampaignsTabView()
                .tag(3)
                
            ProfileTabView()
                .tag(4)
                
        }
        .tabViewStyle(.page(indexDisplayMode: .never))
        BottomTabBarItemView(currentTabSelected: $currentTabSelected)
            .ignoresSafeArea(.container, edges: .bottom)
    }
}

struct BottomTabBarItemView: View {
    @Binding var currentTabSelected: Int
    
    var body: some View {
        HStack(alignment: .center) {
            item(text: "Links", image: "linkIcon", index: 0)
            
            item(text: "Courses", image: "courseIcon", index: 1)
            
            addItem()
            
            item(text: "Campaigns", image: "campaignIcon", index: 3)
            
            item(text: "Profile", image: "profileIcon", index: 4)
            
        }
    }
    
    private func item(text: String, image: String, index: Int) -> some View {
        Button(action: {
            withAnimation {
                currentTabSelected = index
            }
        }, label: {
            VStack {
                Image(image)
                    .renderingMode(.template)
                    .resizable()
                    .frame(width:32.0, height: 32.0)
                    .foregroundColor(index == currentTabSelected ? .primary : .textSecondary)
                Text(text)
                    .font(.caption2)
                    .foregroundColor(index == currentTabSelected ? .primary : .textSecondary)
            }
        })
        .frame(maxWidth: .infinity)
    }
    
    private func addItem() -> some View {
        Button(action: {
            withAnimation {
                currentTabSelected = 2
            }
        }, label: {
            ZStack(alignment: .bottom) {
                Circle()
                    .fill(.white)
                Image(systemName: "plus")
                    .tint(.white)
                    .font(.title3)
                    .padding(.all, 24.0)
                    .background(Circle().background(Color("blue_0e6fff")))
                    .clipShape(Circle())
                    .shadow(color: Color("blue_0e6fff").opacity(0.4), radius: 12.0, x: 0.0, y: 4.0)
            }
        })
        .offset(y: -32.0)
        .frame(maxWidth: .infinity)
    }
}
