//
//  GraphDetailView.swift
//  OpeninApp_project
//
//  Created by Vyom on 01/05/24.
//

import SwiftUI
import Charts

struct GraphDetailView: View {
    var body: some View {
        VStack(alignment: .leading, spacing: 16.0) {
            OverviewGraphView()
            GraphItemView()
            ViewButton(label: "View Analytics", image: "analyticsIcon")
        }
    }
}

struct GraphItemView: View {
    @EnvironmentObject var linkTabVM: LinkTabVM
    
    var body: some View {
        ScrollView(.horizontal, showsIndicators: false) {
            HStack(alignment: .center, spacing: 12.0) {
                analysisItemView(image: "clicksIcon", primaryLabel: "123", secondaryLabel: "Today's clicks")
                analysisItemView(image: "locationIcon", primaryLabel: "Ahamedab..", secondaryLabel: "Top Location")
                analysisItemView(image: "instagramIcon", primaryLabel: "Instagram", secondaryLabel: "Top Source")
                analysisItemView(image: "instagramIcon", primaryLabel: "11:00 - 12:00", secondaryLabel: "Best Time")
            }
            .padding(.trailing)
        }
        .padding(.trailing, -16.0)
    }
    
    @ViewBuilder
    private func analysisItemView(image: String, primaryLabel: String, secondaryLabel: String) -> some View {
        VStack(alignment: .leading, spacing: 16.0) {
            Image(image)
            VStack(alignment: .leading, spacing: 8.0) {
                Text(primaryLabel)
                    .font(.body)
                    .fontWeight(.semibold)
                    .lineLimit(1)
                Text(secondaryLabel)
                    .font(.subheadline)
                    .fontWeight(.regular)
                    .foregroundColor(.textSecondary)
                    .lineLimit(1)
            }
        }
        .padding()
        .frame(width: UIScreen.main.bounds.width * 0.4, alignment: .leading)
        .background(Color.white.cornerRadius(8.0))
    }
}

struct OverviewGraphView: View {
    @EnvironmentObject var linkTabVM: LinkTabVM
    
    var body: some View {
        VStack {
            HStack {
                Text("Overview")
                    .font(.footnote)
                    .foregroundColor(.textSecondary)
                
                Spacer()
                
                HStack {
                    Text("22 Aug - 23 Sept")
                        .font(.footnote)
                    Image("timeClockIcon")
                }
                .padding(.vertical, 8.0)
                .padding(.horizontal)
                .overlay(
                    RoundedRectangle(cornerRadius: 4.0, style: .continuous)
                        .stroke(.greyEbebeb, lineWidth: 1.0)
                )
            }
            OverviewGraph()
        }
        .padding()
        .background(Color.white.cornerRadius(8.0))
    }
}

struct OverviewGraph: View {
    @EnvironmentObject var linkTabVM: LinkTabVM
    
    let linearGradient = LinearGradient(gradient: Gradient(colors: [Color.accentColor.opacity(0.4),
                                                                    Color.accentColor.opacity(0)]),
                                        startPoint: .top,
                                        endPoint: .bottom)
    let months = ["Jan", "Feb", "Mar", "Apr", "May", "Jun", "Jul", "Aug"]
    
    var body: some View {
        Chart {
            
        }
        .chartXScale(domain: months)
        .chartYScale(domain: 0...100)
        .chartLegend(.hidden)
        .chartYAxis {
            AxisMarks(position: .leading)
        }
        .aspectRatio(2.0, contentMode: .fit)
    }
}
