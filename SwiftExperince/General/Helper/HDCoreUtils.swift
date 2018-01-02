//
//  HDCoreUtils.swift
//  SwiftExperince
//
//  Created by HMRL on 2018/1/2.
//  Copyright © 2018年 HMRL. All rights reserved.
//

import Foundation
import UIKit
//pss_2.别人是类名跟文件名是统一的，这里是不统一的，这么玩也是666
class CoreUtils: NSObject {
    /**
     *  颜色
     */
    
    static func HDColor(_ r:CGFloat,g:CGFloat,b:CGFloat,a:CGFloat)->(UIColor){
        return UIColor(red: r/255.0, green: g/255.0, blue: b/255.0, alpha: a);
    }
}
