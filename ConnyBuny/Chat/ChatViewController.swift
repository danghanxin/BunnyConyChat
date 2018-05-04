//
//  ChatViewController.swift
//  ConnyBuny
//
//  Created by danghanxin on 2018/5/4.
//  Copyright © 2018年 danghanxin. All rights reserved.
//

import UIKit

class ChatViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        self.view.backgroundColor = UIColor.white
        self.initUIAndData()
    }
    
    func initUIAndData() {
        self.view.addSubview(self.tableView)
        self.tableView.delegate = self.presenter
        self.tableView.dataSource = self.presenter
    }
    
    lazy var tableView : UITableView = {
        let tableView = UITableView()
        tableView.frame = self.view.bounds
        return tableView
    }()
    
    lazy var presenter : ChatPresenter = {
        let presenter = ChatPresenter()
        return presenter
    }()

}
