//
//  LinkListView.swift
//  OpeninApp_project
//
//  Created by Vyom on 01/05/24.
//

import SwiftUI

struct LinkListView: View {
    @EnvironmentObject var linkTabVM: LinkTabVM
    
    var body: some View {
        VStack(alignment: .leading, spacing: 16.0) {
            ListItemView()
            ListItemView()
            ListItemView()
            ListItemView()
            ViewButton(label: "View All Links", image: "linkIcon")
        }
    }
}

struct ListItemView : View {
    
    var body: some View {
        VStack {
            HStack {
                Image("amazonIcon")
                    .overlay(
                        RoundedRectangle(cornerRadius: 8.0, style: .continuous)
                            .stroke(.greyF5F5F5, lineWidth: 1.0)
                    )
                VStack(alignment: .leading, spacing: 8.0) {
                    Text("Sample link name...")
                        .font(.footnote)
                        .lineLimit(1)
                    Text("22 Aug 2022")
                        .font(.caption)
                        .lineLimit(1)
                        .foregroundColor(.textSecondary)
                }
                
                Spacer(minLength: 0.0)
                
                VStack(alignment: .leading, spacing: 8.0) {
                    Text("2323")
                        .font(.footnote)
                        .lineLimit(1)
                    Text("Clicks")
                        .font(.caption)
                        .lineLimit(1)
                        .foregroundColor(.textSecondary)
                }
            }
            .padding(.all, 8.0)
            
            HStack {
                Text("https://samplelink.oia.bio/ashd...")
                    .font(.footnote)
                    .foregroundColor(.blue0E6Fff)
                    .lineLimit(1)
                Spacer()
                Image("copyIcon_inverted")
            }
            .padding(.all, 8.0)
            .background(Color.blueE8F1Ff.cornerRadius(8.0, corners: [.bottomLeft, .bottomRight]))
            .overlay(
                UnevenRoundedRectangle(topLeadingRadius: 0, bottomLeadingRadius: 8.0, bottomTrailingRadius: 8.0, topTrailingRadius: 0)
                    .strokeBorder(style: StrokeStyle(lineWidth: 1.0, dash: [2.0]))
                    .foregroundColor(.blueA6C7FF)
            )
            
        }
        .background(Color.white.cornerRadius(8.0))
    }
}

struct ViewButton: View {
    var label: String
    var image: String
    
    var body: some View {
        Label(
            title: {
                Text(label)
            },
            icon: {
                Image(image)
                .foregroundColor(.primary)}
        )
        .padding(.vertical, 8.0)
        .frame(maxWidth: .infinity)
        .overlay(
            RoundedRectangle(cornerRadius: 8.0, style: .continuous)
                .stroke(.greyD8D8D8, lineWidth: 1.0)
                .padding(.horizontal, 1.0)
        )
    }
}
