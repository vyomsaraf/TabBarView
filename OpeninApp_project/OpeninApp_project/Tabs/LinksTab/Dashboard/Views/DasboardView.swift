//
//  DasboardView.swift
//  OpeninApp_project
//
//  Created by Vyom on 01/05/24.
//

import SwiftUI

struct DasboardView: View {
    @EnvironmentObject var linkTabVM: LinkTabVM
    
    var body: some View {
        ScrollView(showsIndicators: false) {
            VStack(alignment: .leading, spacing: 24.0) {
                navBar()
                    .padding(.top)
                VStack(alignment: .leading) {
                    GreetingsView()
                    GraphDetailView()
                        .padding(.bottom, 32.0)
                    LinkTabView()
                        .padding(.bottom, 32.0)
                    ContactView()
                }
                .padding(.horizontal)
                .padding(.vertical, 24.0)
                .frame(maxWidth: .infinity, alignment: .topLeading)
                .background(Rectangle().fill(Color("grey_f5f5f5")).cornerRadius(16.0, corners: [.topLeft, .topRight]))
            }
        }
        .background(Color("blue_0e6fff"))
        .ignoresSafeArea(.container, edges: .bottom)
        .onAppear{
            UIScrollView.appearance().bounces = false
        }
    }
    
    @ViewBuilder
    private func navBar() -> some View {
        HStack(alignment: .center) {
            Text("Dashboard")
                .font(.title)
                .fontWeight(.semibold)
                .lineLimit(1)
                .foregroundStyle(.white, .black)
            
            Spacer()
            
            Image("dasboardIcon")
                .padding(.all, 8.0)
                .background(Color.white.opacity(0.12).cornerRadius(8.0))
        }
        .padding(.horizontal)
    }
}
