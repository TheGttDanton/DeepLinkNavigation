//
//  PageViewController.swift
//  Sample
//
//  Created by Emtiyaj Ali on 06/09/19.
//  Copyright © 2019 Emtiyaj Ali. All rights reserved.
//

import UIKit
import SnapKit
class PageViewController: UIViewController {
    let button : UIButton  = {
        let btn = UIButton()
        btn.setTitle("Click Me :)", for: .normal)
        btn.setTitleColor(.red, for: .normal)
        btn.addTarget(self, action: #selector(clicked), for: .touchDown)
        return btn
    }()
    override func viewDidLoad() {
        super.viewDidLoad()

        view.addSubview(button)
        button.snp.makeConstraints { (make) in
            make.center.equalTo(self.view)
            make.width.equalTo(100)
            make.height.equalTo(30)
        }
    }
    

    @objc func clicked() {
        print("clicked ")
        UIApplication.shared.open(URL(string: "com.myApp://fas")!, options: [:], completionHandler: nil)
    }
}
