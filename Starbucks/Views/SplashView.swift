//
//  SplashView.swift
//  Starbucks
//
//  Created by Miru on 2025/7/2.
//

import SwiftUI

/// 스플래쉬 뷰
struct SplashView: View {
    
    // MARK: - body
    var body: some View {
        
        ZStack(alignment: .center) {
            
            Color.green01
            
            Image(.starbucksLogo)
                .resizable()
                .frame(width: 168, height: 168)
            
        }
        .ignoresSafeArea(.all)
        
    }
    
}

#Preview {
    SplashView()
}
