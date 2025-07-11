//
//  SignupView.swift
//  Starbucks
//
//  Created by Miru on 2025/7/10.
//

import SwiftUI

/// 회원가입 뷰
struct SignupView: View {
    
    // MARK: - Properties
    @Bindable var signupViewModel: SignupViewModel = .init()
    @FocusState var isNicknameFocused: Bool
    @FocusState var isEmailFocused: Bool
    @FocusState var isPasswordFocused: Bool
    
    @AppStorage("nickname") var nickname: String = ""
    @AppStorage("email") var email: String = ""
    @AppStorage("password") var password: String = ""
    
    // MARK: - body
    var body: some View {
        VStack {
            textFieldGroup
            
            Spacer()
            
            MainButton(text: "생성하기", height: 58, action: signupViewModel.signup)
        }
        .safeAreaPadding(.top, 210)
        .safeAreaPadding(.bottom, 72)
        .safeAreaPadding(.horizontal, 19)
    }
    
    // MARK: - textFieldGroup
    private var textFieldGroup: some View {
        VStack(spacing: 49) {
            SignupTextField(text: $signupViewModel.signupModel.nickname, placeholder: "닉네임", isFocused: $isNicknameFocused)
            SignupTextField(text: $signupViewModel.signupModel.email, placeholder: "이메일", isFocused: $isEmailFocused)
            SignupTextField(text: $signupViewModel.signupModel.password, placeholder: "비밀번호", isFocused: $isPasswordFocused)
        }
    }
}

#Preview {
    SignupView()
}
