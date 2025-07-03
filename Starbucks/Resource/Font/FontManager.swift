//
//  FontManager.swift
//  Starbucks
//
//  Created by Miru on 2025/7/2.
//

import Foundation
import SwiftUI

extension Font {
    enum Pretendard {
        
        case extraBold
        case bold
        case semiBold
        case regular
        case medium
        case light
        
        var value: String {
            switch self {
            case .extraBold:
                return "PretendardVariable-ExtraBold"
            case .bold:
                return "PretendardVariable-Bold"
            case .semiBold:
                return "PretendardVariable-Semibold"
            case .medium:
                return "PretendardVariable-Medium"
            case .regular:
                return "PretendardVariable-Regular"
            case .light:
                return "PretendardVariable-Light"
            }
        }
    }
    
    /// pretendard 폰트 생성 함수
    static func pretendard(type: Pretendard, size: CGFloat) -> Font {
        return .custom(type.value, size: size)
    }
    
    // extraBold
    static var extraBold: Font {
        return .pretendard(type: .extraBold, size: 24)
    }
    
    // bold
    static var bold24: Font {
        return .pretendard(type: .bold, size: 24)
    }
    static var bold22: Font {
        return .pretendard(type: .bold, size: 22)
    }
    static var bold20: Font {
        return .pretendard(type: .bold, size: 20)
    }
    static var bold16: Font {
        return .pretendard(type: .bold, size: 16)
    }
    
    // semiBold
    static var semiBold38: Font {
        return .pretendard(type: .semiBold, size: 38)
    }
    static var semiBold24: Font {
        return .pretendard(type: .semiBold, size: 24)
    }
    static var semiBold18: Font {
        return .pretendard(type: .semiBold, size: 24)
    }
    static var semiBold16: Font {
        return .pretendard(type: .semiBold, size: 16)
    }
    static var semiBold14: Font {
        return .pretendard(type: .semiBold, size: 14)
    }
    static var semiBold13: Font {
        return .pretendard(type: .semiBold, size: 13)
    }
    static var semiBold12: Font {
        return .pretendard(type: .semiBold, size: 12)
    }
    
    // regular
    static var regular18: Font {
        return .pretendard(type: .regular, size: 18)
    }
    static var regular13: Font {
        return .pretendard(type: .regular, size: 13)
    }
    static var regular12: Font {
        return .pretendard(type: .regular, size: 12)
    }
    static var regular9: Font {
        return .pretendard(type: .regular, size: 9)
    }
    
    // medium
    static var medium18: Font {
        return .pretendard(type: .medium, size: 18)
    }
    static var medium16: Font {
        return .pretendard(type: .medium, size: 16)
    }
    static var medium13: Font {
        return .pretendard(type: .medium, size: 13)
    }
    static var medium10: Font {
        return .pretendard(type: .medium, size: 10)
    }
    static var medium8: Font {
        return .pretendard(type: .medium, size: 8)
    }
    
    // light
    static var light14: Font {
        return .pretendard(type: .light, size: 14)
    }
}
