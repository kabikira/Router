//
//  Router.swift
//  Router
//
//  Created by koala panda on 2023/03/12.
//

import UIKit

// 画面遷移を管理
final class Router {
    static let shard: Router = .init()
    private init() {}
    
    private var window: UIWindow?
    
    // 起動時の画面を表示する
    func showRoot(window: UIWindow?) {
        
        // 起動直後の画面を表示する
        func showRoot(window: UIWindow?) {
            if !UserDefaults.standard.isLogined {
                
            }
        }
    }
}
