//
//  SecondViewController.swift
//  Router
//
//  Created by koala panda on 2023/03/12.
//

import UIKit

class SecondViewController: UIViewController {

    // storyboardからVCを生成する
    static func makeFromStoryboard() -> SecondViewController {
        let vc = UIStoryboard(name: "Second", bundle: nil).instantiateInitialViewController() as! SecondViewController
        return vc
    }
    
    private var countModel = CountModel(count: 0)

    @IBOutlet var countLabel: UILabel! {
        didSet {
            countLabel.text = countModel.count.description
        }
    }

    @IBOutlet var countUpButton: UIButton! {
        didSet {
            countUpButton.addTarget(self, action: #selector(tapNextButton(_:)), for: .touchUpInside)
        }
    }
    
        
    @objc private func tapNextcountUpButton(_: UIResponder) {
        countModel.count += 1
        countLabel.text = countModel.count.description
    }
    
  
    @IBOutlet private var nextButton: UIButton! {
        didSet {
            nextButton.addTarget(self, action: #selector(tapNextButton(_:)), for: .touchUpInside)
        }
    }
    
    
    @objc private func tapNextButton(_: UIResponder) {
        Router.shared.showThird(from: self, countModel: countModel)
    }
    
}
