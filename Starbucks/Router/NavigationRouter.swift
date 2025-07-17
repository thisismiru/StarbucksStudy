//
//  NavigationRouter.swift
//  Starbucks
//
//  Created by 김성현 on 2025-07-17.
//

import Foundation
import Observation
import SwiftUI

@Observable
class NavigationRouter {
    var path = NavigationPath()
    
    func push(_ route: Route) {
        path.append(route)
    }
    
    func pop() {
        if !path.isEmpty {
            path.removeLast()
        }
    }
    
    func reset() {
        path = NavigationPath()
    }
}
