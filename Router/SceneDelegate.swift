//
//  SceneDelegate.swift
//  Router
//
//  Created by koala panda on 2023/03/12.
//

import UIKit

class SceneDelegate: UIResponder, UIWindowSceneDelegate {

//    var window: UIWindow?


    func scene(_ scene: UIScene, willConnectTo session: UISceneSession, options connectionOptions: UIScene.ConnectionOptions) {
        
        // これだと画面真っ黒になった
//        Router.shared.showRoot(window: UIWindow(frame: UIScreen.main.bounds))
        //　UIwindowsのアンラップ
        guard let secene = (scene as? UIWindowScene) else { return }
        // window生成
        let window = UIWindow(windowScene: secene)
        Router.shared.showRoot(window: window)
    }

    func sceneDidDisconnect(_ scene: UIScene) {
     
    }

    func sceneDidBecomeActive(_ scene: UIScene) {
        
    }

    func sceneWillResignActive(_ scene: UIScene) {
        
    }

    func sceneWillEnterForeground(_ scene: UIScene) {
       
    }

    func sceneDidEnterBackground(_ scene: UIScene) {
        
    }


}

