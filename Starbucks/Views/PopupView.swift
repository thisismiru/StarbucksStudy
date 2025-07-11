//
//  PopupView.swift
//  Starbucks
//
//  Created by Miru on 2025/7/10.
//

import SwiftUI

/// 팝업 뷰
struct PopupView: View {
    
    // MARK: - Properties
    @Environment(\.dismiss) var dismiss
    
    // MARK: - body
    var body: some View {
        VStack {
            Image("popup")
                .resizable()
                .aspectRatio(contentMode: .fill)
                .frame(height: 720)
            
            Spacer()
            
            bottomGroup
                .safeAreaPadding(.horizontal, 18)
        }
        .ignoresSafeArea(edges: .top)
        .safeAreaPadding(.bottom, 36)
    }
    
    // MARK: - bottomGroup
    private var bottomGroup: some View {
        VStack {
            MainButton(text: "자세히 보기", height: 58, action: {print("자세히보기")})
            
            HStack {
                Spacer()
                
                Button {
                    dismiss()
                } label: {
                    Text("X 닫기")
                        .foregroundStyle(.gray05)
                }
                .padding(.top, 19)
                .padding(.trailing, 19)
            }
        }

    }
}

#Preview {
    PopupView()
}
