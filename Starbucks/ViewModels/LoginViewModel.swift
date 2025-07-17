//
//  LoginViewModel.swift
//  Starbucks
//
//  Created by Miru on 2025/7/2.
//

import Foundation

@Observable
class LoginViewModel {
    // MARK: - Properties
    var id: String = ""
    var password: String = ""
    
    var validId: String = UserDefaults.standard.string(forKey: "email") ?? ""
    var validPassword: String = UserDefaults.standard.string(forKey: "password") ?? ""
}
