//
//  ContactView.swift
//  OpeninApp_project
//
//  Created by Vyom on 01/05/24.
//

import SwiftUI

struct ContactView: View {
    var body: some View {
        VStack(alignment: .leading, spacing: 16.0) {
            connectionView(text: "Talk with us", image: "whatsappIcon", color: Color("green_4ad15f").opacity(0.12), borderColor: Color("green_4ad15f").opacity(0.32))
            connectionView(text: "Frequently Asked Questions", image: "questionIcon", color: Color("blue_e8f1ff"), borderColor: Color("blue_0e6fff").opacity(0.32))
        }
    }
    
    @ViewBuilder
    private func connectionView(text: String, image:String, color: Color, borderColor: Color) -> some View {
        Label(
            title: { 
                Text(text)
                    .font(.body)
                    .fontWeight(.semibold)
            },
            icon: { Image(image) }
        )
        .padding(.horizontal, 12.0)
        .padding(.vertical, 20.0)
        .frame(maxWidth: .infinity, alignment: .leading)
        .background(color.cornerRadius(8.0))
        .overlay(
            RoundedRectangle(cornerRadius: 8.0, style: .continuous)
                .stroke(borderColor, lineWidth: 1.0)
        )
    }
}
