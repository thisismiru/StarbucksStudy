//
//  TextField.swift
//  Starbucks
//
//  Created by Miru on 2025/7/10.
//

import SwiftUI

/// 로그인 텍스트 필드
struct LoginTextField: View {
    
    // MARK: - Properties
    @Binding var text: String
    var placeholder: String
    @FocusState.Binding var isFocused: Bool
    
    // MARK: - body
    var body: some View {
        VStack(alignment: .leading, spacing: 4) {
            TextField(placeholder, text: $text)
                .focused($isFocused)
                .font(.regular13)
                .foregroundStyle(.black01)
            
            Rectangle()
                .frame(height: 0.7)
                .foregroundStyle(isFocused ? Color.green01 : .gray00)
        }
    }
}
