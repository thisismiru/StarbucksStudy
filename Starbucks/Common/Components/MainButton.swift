//
//  MainButton.swift
//  Starbucks
//
//  Created by Miru on 2025/7/10.
//

import SwiftUI

/// 메인 버튼
struct MainButton: View {
    
    // MARK: - Properties
    var text: String
    var height: CGFloat
    var action: () -> Void
    
    // MARK: - body
    var body: some View {
        Button {
            action()
        } label: {
            ZStack {
                RoundedRectangle(cornerRadius: 20)
                    .foregroundStyle(.green01)
                    .frame(width: .infinity, height: height)
                Text(text)
                    .font(.medium16)
                    .foregroundStyle(.white)
            }
        }
    }
}
