//
//  BreadModel.swift
//  Starbucks
//
//  Created by 김성현 on 2025-07-18.
//

import Foundation
import SwiftUI

struct BreadModel: ImageCardRepresentable, Identifiable {
    let id: UUID = UUID()
    let image: ImageResource
    let name: String
}
