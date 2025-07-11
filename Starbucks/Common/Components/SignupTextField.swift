//
//  SignupTextField.swift
//  Starbucks
//
//  Created by Miru on 2025/7/10.
//

import SwiftUI

/// 회원가입 텍스트 필드
struct SignupTextField: View {
    
    // MARK: - Properties
    @Binding var text: String
    var placeholder: String
    @FocusState.Binding var isFocused: Bool
    
    // MARK: - body
    var body: some View {
        VStack(spacing: 9) {
            TextField(placeholder, text: $text)
                .focused($isFocused)
            
            Rectangle()
                .frame(height: 1)
                .foregroundStyle(isFocused ? .green01 : .gray00)
        }
    }
}
