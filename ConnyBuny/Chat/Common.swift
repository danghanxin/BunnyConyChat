//
//  Common.swift
//  ConnyBuny
//
//  Created by syswin on 2018/5/4.
//  Copyright © 2018年 danghanxin. All rights reserved.
//

import UIKit

//class Common: NSObject {

    //屏幕高度
    let kScreenHeight = UIScreen.main.bounds.size.height;
    
    //屏幕宽度
    let kScreenWidth = UIScreen.main.bounds.size.width;
    
    //判断iPhone4
    let IPHONE4:Bool! = (UIScreen.main.bounds.size.height == 960) ? true : false
    
    //判断iPhone5/5c/5s
    let IPHONE5:Bool! = (UIScreen.main.bounds.size.height == 1136) ? true : false
    
    //判断iPhone6/6s
    let IPHONE6s:Bool! = (UIScreen.main.bounds.size.height == 1334) ? true : false
    
    //判断iPhone6p
    let IPHONE6p:Bool! = (UIScreen.main.bounds.size.height == 2208) ? true : false
    
    //其它屏幕尺寸相对iphone6的宽度
    func kWidthZoom(width: CGFloat) -> CGFloat {
        return width * kScreenWidth / 750.0;
    }
    
    //其它屏幕尺寸相对iphone6的高度
    func kHeightZoom(width: CGFloat) -> CGFloat {
        return width * kScreenHeight / 1334.0;
    }
    
    //RGB 16进制转换
    func UIColorFromRGB(rgbValue: UInt) -> UIColor {
        return UIColor(
            red: CGFloat((rgbValue & 0xFF0000) >> 16) / 255.0,
            green: CGFloat((rgbValue & 0x00FF00) >> 8) / 255.0,
            blue: CGFloat(rgbValue & 0x0000FF) / 255.0,
            alpha: CGFloat(1.0)
        )
    }
    
    //通过颜色获取图片
    func imageWithColor(color:UIColor, size:CGSize) -> UIImage {
        let rect = CGRect.init(x: 0, y: 0, width: size.width, height: size.height);
        UIGraphicsBeginImageContext(rect.size);
        let context = UIGraphicsGetCurrentContext();
        context?.setFillColor(color.cgColor);
        context?.addRect(rect);
        let img = UIGraphicsGetImageFromCurrentImageContext()
        UIGraphicsEndImageContext();
        return img!;
    }
//}
