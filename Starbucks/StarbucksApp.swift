//
//  StarbucksApp.swift
//  Starbucks
//
//  Created by Miru on 2025/7/2.
//

import SwiftUI

@main
struct StarbucksApp: App {
    @State private var isLoggedIn = false
    
    var body: some Scene {
        WindowGroup {
            NavigationStack {
                if isLoggedIn {
                    TabTestView()
                } else {
                    LoginView(isLogined: $isLoggedIn)
                }
            }
        }
    }
}
