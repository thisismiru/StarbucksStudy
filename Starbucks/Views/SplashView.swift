//
//  SplashView.swift
//  Starbucks
//
//  Created by Miru on 2025/7/2.
//

import SwiftUI

struct SplashView: View {
    
    var body: some View {
        
        ZStack(alignment: .center) {
            
            Color.green01
            
            Image("starbucksLogo")
                .resizable()
                .frame(width: 168, height: 168)
            
        }
        .ignoresSafeArea(.all)
        
    }
    
}

#Preview {
    SplashView()
}
