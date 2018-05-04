//
//  ChatTableViewCell.swift
//  ConnyBuny
//
//  Created by danghanxin on 2018/5/3.
//  Copyright © 2018年 danghanxin. All rights reserved.
//

import UIKit
import SnapKit

class ChatTableViewCell: UITableViewCell {
    
    override init(style: UITableViewCellStyle, reuseIdentifier: String?) {
        super.init(style: style, reuseIdentifier: reuseIdentifier)
        self.contentView.addSubview(self.headImageView)
        self.contentView.addSubview(self.titleLabel)
        self.contentView.addSubview(self.subTitleLabel)
        self.contentView.addSubview(self.timeLabel)
        self.setUpUI()
    }
    
    required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    func setUpUI() {
        self.headImageView.snp.makeConstraints { (make) in
            make.left.equalTo(self.contentView.snp.left).offset(15)
            make.top.equalTo(self.contentView.snp.top).offset(15)
            make.size.equalTo(CGSize(width: 90, height: 90))
            make.bottom.equalTo(self.contentView.snp.bottom).offset(-15)
        }
        
        self.titleLabel.snp.makeConstraints { (make) in
            make.left.equalTo(self.headImageView.snp.left).offset(15)
            make.top.equalTo(self.contentView.snp.top).offset(15)
            make.size.equalTo(CGSize(width: 250, height: 30))
        }
        
        self.subTitleLabel.snp.makeConstraints { (make) in
            make.left.equalTo(self.headImageView.snp.left).offset(15)
            make.top.equalTo(self.titleLabel.snp.bottom).offset(15)
            make.size.equalTo(CGSize(width: 250, height: 30))
        }
        
        self.timeLabel.snp.makeConstraints { (make) in
            make.right.equalTo(self.contentView.snp.right).offset(-15)
            make.top.equalTo(self.contentView.snp.top).offset(15)
            make.size.equalTo(CGSize(width: 80, height: 30))
        }
    }
    
    
    
    lazy var headImageView : UIImageView = {
        let headImageView = UIImageView()
        headImageView.layer.cornerRadius = 4.0;
        return headImageView
    }()
    
    lazy var titleLabel : UILabel = {
        let titleLabel = UILabel()
        titleLabel.text = "昵称"
        titleLabel.font.withSize(15)
        titleLabel.textColor = UIColor.gray
        return titleLabel
    }()
    
    lazy var subTitleLabel : UILabel = {
        let subTitleLabel = UILabel()
        subTitleLabel.text = "聊天内容"
        subTitleLabel.font.withSize(14)
        subTitleLabel.textColor = UIColor.lightGray
        return subTitleLabel
    }()
    
    lazy var timeLabel : UILabel = {
        let timeLabel = UILabel()
        timeLabel.text = "05:20"
        timeLabel.font.withSize(14)
        timeLabel.textColor = UIColor.lightGray
        return timeLabel
    }()

}
