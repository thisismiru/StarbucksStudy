//
//  LoginView.swift
//  Starbucks
//
//  Created by Miru on 2025/7/2.
//

import SwiftUI

/// 로그인 화면 뷰
struct LoginView: View {
    
    // MARK: - Properties
    @Bindable var loginViewModel: LoginViewModel = .init()
    @FocusState private var isIdFocused: Bool
    @FocusState private var isPwFocused: Bool
    
    // MARK: - body
    
    var body: some View {
        VStack() {
            
            Spacer()
            
            titleGroup
            
            Spacer()
            
            idGroup
            
            Spacer()
            
            loginGroup
            
        }
        .safeAreaPadding(.horizontal, 19)
        .safeAreaPadding(.bottom, 63)
        
    }
    
    // MARK: - titleGroup(상단 타이틀)
    
    private var titleGroup: some View {
        VStack(alignment: .leading, spacing: 28) {
            
            logoImage
                
            titleText
            
        }
        .frame(maxWidth: .infinity, alignment: .leading)
    }
    
    private var logoImage: some View {
        Image("starbucksLogo")
            .resizable()
            .frame(width: 97, height: 95)
    }
    
    private var titleText: some View {
        VStack(alignment: .leading, spacing: 19) {
            Text("안녕하세요.\n스타벅스입니다.")
                .font(.extraBold)
            Text("회원 서비스 이용을 위해 로그인 해주세요.")
                .font(.medium16)
                .foregroundStyle(.gray01)
        }
    }
    
    // MARK: - idGroup(아이디, 비밀번호 입력 부분)
    
    private var idGroup: some View {
        VStack(spacing: 47) {
            
            LoginTextField(text: $loginViewModel.id, placeholder: "아이디", isFocused: $isIdFocused)
            
            LoginTextField(text: $loginViewModel.id, placeholder: "비밀번호", isFocused: $isPwFocused)
            
            MainButton(text: "로그인하기", height: 46, action: {})
            
        }
    }
    
    private var idTextField: some View {
        VStack(alignment: .leading, spacing: 4) {
            Text("아이디")
                .font(.regular13)
                .foregroundStyle(.black01)
            Divider()
                .frame(height: 0.7)
        }
    }
    
    private var passwordTextField: some View {
        VStack(alignment: .leading, spacing: 4) {
            Text("비밀번호")
                .font(.regular13)
                .foregroundStyle(.black01)
            Divider()
        }
    }
    
    // MARK: - loginGorup(소셜 로그인 부분)
    
    private var loginGroup: some View {
        VStack(spacing: 19) {
            
            emailSignUpButton
            
            kakaoLogin
            
            appleLogin
        }
    }
    
    private var emailSignUpButton: some View {
        Text("이메일로 회원가입하기")
            .font(.regular12)
            .foregroundStyle(.gray04)
            .underline()
    }
    
    private var kakaoLogin: some View {
        Image("kakaoLogin")
            .resizable()
            .frame(width: 306, height: 45)
    }
    
    private var appleLogin: some View {
        Image("appleLogin")
            .resizable()
            .frame(width: 306, height: 45)
    }
}

#Preview {
    LoginView()
}
