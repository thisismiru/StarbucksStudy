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
    
    @Environment(\.dismiss) var dismiss
    
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
            toolbar
            
            Spacer()
            // frame 넣기
            
            textFieldGroup
            
            Spacer()
            
            MainButton(text: "생성하기", height: 58) {
                signupViewModel.signup()
                dismiss()
            }
            
        }
        .safeAreaPadding(.bottom, 72)
        .safeAreaPadding(.horizontal, 19)
        .navigationBarHidden(true)
    }
    
    // MARK: - textFieldGroup
    private var textFieldGroup: some View {
        VStack(spacing: 49) {
            SignupTextField(text: $signupViewModel.signupModel.nickname, placeholder: "닉네임", isFocused: $isNicknameFocused)
            SignupTextField(text: $signupViewModel.signupModel.email, placeholder: "이메일", isFocused: $isEmailFocused)
            SignupTextField(text: $signupViewModel.signupModel.password, placeholder: "비밀번호", isFocused: $isPasswordFocused)
        }
    }
    
    // TODO: - 여유 있을 때 커스텀 컴포넌트로 바꾸기
    // MARK: - toolbar
    private var toolbar: some View {
        ZStack {
            HStack {
                Button {
                    dismiss()
                } label: {
                    Image(.chevron)
                        .resizable()
                        .frame(width: 24, height: 24)
                }
                Spacer()
            }
            
            Text("가입하기")
                .font(.medium16)
                .foregroundStyle(.black)
        }
        .frame(width: .infinity)
        .padding(.top, 18)
    }
}

#Preview {
    SignupView()
}
