//
//  coffeeCard.swift
//  Starbucks
//
//  Created by 김성현 on 2025-07-18.
//

import Foundation
import SwiftUI

struct CircleImageCard<T: ImageCardRepresentable>: View {
    var item: T
    
    var body: some View {
        VStack(spacing: 10) {
            Image(item.image)
                .resizable()
                .frame(width: 130, height: 130)
            
            Text(item.name)
                .font(.semiBold14)
        }
    }
}
