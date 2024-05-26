//
//  AddTabView.swift
//  OpeninApp_project
//
//  Created by Vyom on 01/05/24.
//

import SwiftUI

struct AddTabView: View {
    var body: some View {
        VStack {
            Spacer()
            Text("Add Tab")
                .font(.largeTitle)
            Spacer()
        }
        .frame(maxWidth: .infinity)
        .background(Rectangle().fill(Color("grey_f5f5f5")).cornerRadius(16.0, corners: [.topLeft, .topRight]))
    }
}