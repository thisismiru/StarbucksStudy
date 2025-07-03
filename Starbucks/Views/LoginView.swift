//
//  LoginView.swift
//  Starbucks
//
//  Created by Miru on 2025/7/2.
//

import SwiftUI

/// 로그인 화면 View
struct LoginView: View {
    
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
        // safeArea인 이유 설명
        .safeAreaPadding(.horizontal, 19)
        .safeAreaPadding(.bottom, 63)
        
    }
    
    // MARK: - titleGroup(상단 타이틀)
    
    private var titleGroup: some View {
        VStack(alignment: .leading, spacing: 28) {
            
            logoImage
                
            titleText
            
        }
    }
    
    private var logoImage: some View {
        HStack {
            Image("starbucksLogo")
                .resizable()
                .frame(width: 97, height: 95)
            
            Spacer()
        }
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
            
            idTextField
            
            passwordTextField
            
            loginButton
            
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
    
    private var loginButton: some View {
        ZStack {
            RoundedRectangle(cornerRadius: 20)
                .foregroundStyle(.green01)
                .frame(width: .infinity, height: 46)
            Text("로그인하기")
                .font(.medium16)
                .foregroundStyle(.white)
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

/*
 
 스터디 운영법
 
 0. PARA 폴더 정리법 알려주기
 
 1. 주차별 순서 정하기
    - 내일은 미르 스타트
    - 각 주차당 한 명씩
 2. 주차별 손그림 올리기
    - 다같이 올리기
 
 3. 조사 기반 토의부터 하기
 4. 발표자가 얘기하구, 하나씩 하고, 다르게 조사한 사람?? 물어보기
 5. 트러블 공유
    - extra tuist 공유
    - 문법 공유
    - 실습
    - 과제 코드********
 6. 과제 발표 및 공유
    - 발표자 컴퓨터 띄우기
    - 손그림이랑 같이 보이면서 어떻게 했는지 설명하기
    - 발표자 기준 본인이 전달하고 싶은 꿀팁(?) 혹은 겪었던 문제 상황 말하기
    - 돌아가면서 진행하기
 7. 모두 다같이 찾아야 하는 코드!!
    - 발표자꺼에서 Deprecated 썼는가? 찾기
 
 */

/*
 
 폰트 파일 어떤거 적용해야 하는지 알려주기 (용량에 맞춰서)
 
 */
