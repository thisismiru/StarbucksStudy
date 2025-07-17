//
//  keyboard.swift
//  Starbucks
//
//  Created by Miru on 2025/7/12.
//

import Foundation
import Combine
import SwiftUI

final class KeyboardHeightHelper: ObservableObject {
    @Published var height: CGFloat = 0
    private var cancellable: AnyCancellable?

    init() {
        cancellable = NotificationCenter.default
            .publisher(for: UIResponder.keyboardWillChangeFrameNotification)
            .merge(with: NotificationCenter.default.publisher(for: UIResponder.keyboardWillHideNotification))
            .sink { [weak self] notification in
                guard let self = self else { return }

                if notification.name == UIResponder.keyboardWillHideNotification {
                    self.height = 0
                } else if let frame = notification.userInfo?[UIResponder.keyboardFrameEndUserInfoKey] as? CGRect {
                    self.height = frame.height
                }
            }
    }
}   
