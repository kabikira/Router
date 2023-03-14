//
//  Storyboard+.swift
//  Router
//
//  Created by koala panda on 2023/03/12.
//

import UIKit

// Storyboardの読み込みを一箇所にまとめる
extension UIStoryboard {
    static var firstViewController: FirstViewController {
        UIStoryboard(name: "First", bundle: nil).instantiateInitialViewController() as! FirstViewController
    }
    
    static var secondViewController: SecondViewController {
        UIStoryboard(name: "Second", bundle: nil).instantiateInitialViewController() as! SecondViewController
    }
    static var thirdViewController: ThirdViewController {
        UIStoryboard(name: "Third", bundle: nil).instantiateInitialViewController() as! ThirdViewController
    }
}
