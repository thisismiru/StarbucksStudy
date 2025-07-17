//
//  NoticeModel.swift
//  Starbucks
//
//  Created by 김성현 on 2025-07-18.
//

import Foundation
import SwiftUI

struct NoticeModel: Identifiable {
    let id: UUID = UUID()
    let image: ImageResource
    let title: String
    let content: String
}
