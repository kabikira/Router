//
//  FristViewController.swift
//  Router
//
//  Created by koala panda on 2023/03/12.
//

import UIKit

class FirstViewController: UIViewController {
    
    // StoryboardからVCを生成する
    static func makeFromStoryboard() -> FirstViewController {
        let vc = UIStoryboard(name: "First", bundle: nil).instantiateInitialViewController() as! FirstViewController
        return vc
    }
    @IBOutlet var nextButton: UIButton! {
        didSet {
            nextButton.addTarget(self, action: #selector(tapNextButton(_:)), for: .touchUpInside)
        }
    }
    @objc func tapNextButton(_: UIResponder) {
        Router.shared.showSecond(from: self)
    }
    
 
    

}
