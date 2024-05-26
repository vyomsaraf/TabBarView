//
//  LinkTabView.swift
//  OpeninApp_project
//
//  Created by Vyom on 01/05/24.
//

import SwiftUI

struct LinkTabView: View {
    @State var currentTabSelected: Int = 0
    
    var body: some View {
        VStack(alignment: .leading, spacing: 16.0) {
            LinkTabBarItemView(currentTabSelected: $currentTabSelected)
            LinkListView()
        }
    }
}

struct LinkTabBarItemView: View {
    @Binding var currentTabSelected: Int
    
    var body: some View {
        HStack(alignment: .center) {
            tabItemView(text: "Top Links", index: 0)
            
            tabItemView(text: "Recent Links", index: 1)
            
            Spacer()
            
            Image(systemName: "magnifyingglass")
                .font(.footnote)
                .foregroundColor(.textSecondary)
                .padding(.all, 12.0)
                .background(.greyF2F2F2)
                .overlay(
                    RoundedRectangle(cornerRadius: 8.0, style: .continuous)
                        .stroke(.greyEbebeb, lineWidth: 1.0)
                )
        }
    }
    
    @ViewBuilder
    private func tabItemView(text: String, index: Int) -> some View {
        Button(action: {
            withAnimation {
                currentTabSelected = index
            }
        }, label: {
            Text(text)
                .font(.headline)
                .foregroundColor(currentTabSelected == index ? .white : .textSecondary)
                .padding(.horizontal, 16.0)
                .padding(.vertical, 8.0)
                .if(currentTabSelected == index) { view in
                    view
                        .background(Capsule(style: .circular).fill(.blue0E6Fff))
                }
        })
    }
}
