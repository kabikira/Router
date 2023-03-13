//
//  UserDefault.swift
//  Router
//
//  Created by koala panda on 2023/03/12.
//

import Foundation

extension UserDefaults {
    private var loginedKey: String { "logined" }
    var isLogined: Bool {
        set {
            setValue(newValue, forKey: loginedKey)
        }
        get {
            bool(forKey: loginedKey)
        }
    }
}
