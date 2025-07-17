//
//  NoticeCard.swift
//  Starbucks
//
//  Created by 김성현 on 2025-07-18.
//

import SwiftUI

struct NoticeCard: View {
    var notice: NoticeModel
    
    var body: some View {
        VStack(alignment: .leading, spacing: 9) {
            Image(notice.image)
                .resizable()
                .frame(width: 242, height: 160)
                .padding(.bottom, 7)
            
            Text(notice.title)
                .font(.semiBold18)
                .foregroundStyle(.black02)
                .lineLimit(1)
            
            Text(notice.content)
                .font(.semiBold13)
                .foregroundStyle(.gray03)
            
            Spacer()
        }
        .frame(width: 240, height: 249)
    }
}
