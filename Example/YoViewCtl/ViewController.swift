//
//  ViewController.swift
//  YoViewCtl
//
//  Created by YoSwiftKing on 11/19/2021.
//  Copyright (c) 2021 YoSwiftKing. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    lazy var pushTestBtn : UIButton = {
        let  btn = UIButton.init(frame: CGRect(x: 30, y: 200, width: 300, height: 60))
        btn.setTitle("pushTest", for: .normal)
        btn.backgroundColor = .red
        btn.layer.cornerRadius = 30
        btn.layer.masksToBounds = true
        btn.addTarget(self, action: #selector(pushTestBtnAction(_:)), for: .touchUpInside)
        self.view.addSubview(btn)
        return btn
    }()
    @objc private func pushTestBtnAction(_ sender: UIButton){
        let viwCtl =  YoTestViewCtl()
        viwCtl.modalPresentationStyle = .fullScreen;
        self.present(viwCtl, animated: true, completion: nil)
    }
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        self.pushTestBtn.adjustsImageWhenHighlighted = false
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

}

