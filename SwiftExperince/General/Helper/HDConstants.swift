//
//  HDConstants.swift
//  SwiftExperince
//
//  Created by HMRL on 2018/1/2.
//  Copyright © 2018年 HMRL. All rights reserved.
//

import Foundation
import UIKit

struct HDColor {
    let color:UIColor
    init(red:CGFloat,green:CGFloat,blue:CGFloat,alpha:CGFloat){
        
        color = UIColor(red: red/255, green: green/255, blue: blue/255, alpha: alpha)
    }
}

