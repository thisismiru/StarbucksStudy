//
//  ImageCardRepresentable.swift
//  Starbucks
//
//  Created by 김성현 on 2025-07-18.
//

import Foundation
import SwiftUI

protocol ImageCardRepresentable {
    var image: ImageResource { get }
    var name: String { get }
}
