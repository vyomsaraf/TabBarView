//
//  OpeninApp_projectApp.swift
//  OpeninApp_project
//
//  Created by Vyom on 01/05/24.
//

import SwiftUI

@main
struct OpeninApp_projectApp: App {
    var body: some Scene {
        WindowGroup {
            BottomTabBarView()
                .environmentObject(LinkTabVM())
        }
    }
}
