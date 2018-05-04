//
//  LoginViewController.swift
//  ConnyBuny
//
//  Created by danghanxin on 2018/4/25.
//  Copyright © 2018年 danghanxin. All rights reserved.
//

import UIKit

class LoginViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        self.initUI()
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    func initUI() {
        self.view.addSubview(startButton)
        self.view.addSubview(showLabel)
        self.view.addSubview(addButton)
    }
    
    func startButtonClick(sender:Any) {

    }
    

    //懒加载定义: var 变量名: 类型 = 闭包()
    lazy var startButton : UIButton = {
        let startButton = UIButton()
        startButton.frame = CGRect(x: 100, y: 200, width: 150, height: 60)
        startButton.backgroundColor = UIColor.red
        startButton.layer.cornerRadius = 4
        return startButton
    }()
    
    lazy var showLabel : UILabel = {
        let showLabel = UILabel()
        showLabel.frame = CGRect(x: 100, y: 90, width: 150, height: 60)
        showLabel.backgroundColor = UIColor.blue
        return showLabel
    }()
    
//    func createButton(baseView: UIView) {
//        var button = UIButton.buttonWithType(UIButtonType.System) as UIButton
//        button.frame = CGRectMake(20.0, 20.0, 90.0, 35.0)
//        button.setTitle("Tap Me", forState: UIControlState.Normal)
//        button.addTarget(self, action: Selector("buttonTouched:"), forControlEvents: UIControlEvents.TouchUpInside)
//        baseView.addSubview(button)
//    }
//
//    func buttonTouched(sender: AnyObject) {
//        println("Button touched!")
//    }
    
//    button.addTarget(self, action: #selector(click), for: .touchUpInside)
    lazy var addButton : UIButton = {
        let addButton = UIButton()
        addButton.frame = CGRect(x: 100, y: 500, width: 150, height: 60)
        addButton.backgroundColor = UIColor.yellow
        addButton.setTitle("添加新🍜", for: UIControlState.normal)
        addButton.addTarget(self, action: Selector(("startButtonClick")), for: UIControlEvents.touchUpInside)
        return addButton
    }()

}
