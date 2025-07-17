//
//  SignupViewModel.swift
//  Starbucks
//
//  Created by Miru on 2025/7/10.
//

import Foundation
import SwiftUI

@Observable
class SignupViewModel {
    
    // MARK: - Properties
    var signupModel: SignupModel = .init(nickname: "", email: "", password: "")
    
    // MARK: - Functions
    func signup() {
        if (signupModel.nickname != "") && (signupModel.email != "") && (signupModel.password != "") {
            UserDefaults.standard.set(signupModel.nickname, forKey: "nickname")
            UserDefaults.standard.set(signupModel.email, forKey: "email")
            UserDefaults.standard.set(signupModel.password, forKey: "password")
            print(signupModel.nickname, signupModel.email, signupModel.password)
        }
    }
    
}
