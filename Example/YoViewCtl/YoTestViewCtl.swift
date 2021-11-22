//
//  YoTestViewCtl.swift
//  YoViewCtl_Example
//
//  Created by admin on 2021/11/19.
//  Copyright © 2021 CocoaPods. All rights reserved.
//

import UIKit
import YoViewCtl
class YoTestViewCtl: YoViewCtl {

    override func viewDidLoad() {
        super.viewDidLoad()
        self.navigationController?.navigationBar.isHidden = false
        self.view.backgroundColor = .red
        // Do any additional setup after loading the view.
        self.navBarView.titleLab.text = "测试标题"
        self.navBarView.rightBtn.setTitle("RightBtn", for: .normal)
        self.navBarView.rightBtn.snp_makeConstraints { make in
            make.centerY.equalTo(self.navBarView.leftBtn)
            make.height.equalTo(44)
            make.width.equalTo(100)
            make.right.equalTo(self.navBarView).offset(-10)
        }
        self.navBarView.rightBtn.backgroundColor = .green
    }
    override func leftBtnActionEvent(_ sender: UIButton) {
        print("leftBtnActionEvent")
        self.dismiss(animated: true, completion: nil)
    }
    override func rightBtnActionEvent(_ sender: UIButton) {
        print("rightBtnActionEvent")
    }
}
