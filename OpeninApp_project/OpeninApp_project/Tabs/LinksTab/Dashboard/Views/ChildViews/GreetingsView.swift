//
//  GreetingsView.swift
//  OpeninApp_project
//
//  Created by Vyom on 01/05/24.
//

import SwiftUI

struct GreetingsView: View {
    var body: some View {
        VStack(alignment: .leading, spacing: 0.0) {
            Text(getGreetingLabel())
                .font(.body)
                .foregroundStyle(Color("text_secondary"), Color.white)
            
            HStack(alignment: .center) {
                Text("Ajay Manva")
                    .font(.title2)
                    .fontWeight(.semibold)
                Image("reverseWavingHandIcon")
            }
        }
    }
    
    private func getGreetingLabel() -> String {
        let currentHour = getCurrentHour()
        if currentHour < 12 {
            return "Good morning"
        } else if currentHour < 18 {
            return "Good afternoon"
        } else {
            return "Good evening"
        }
    }
    
    private func getCurrentHour() -> Int {
        let calendar = Calendar.current
        return calendar.component(.hour, from: Date())
    }
}
