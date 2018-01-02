//
//  SHTabBarVC.swift
//  SwiftExperince
//
//  Created by HMRL on 2018/1/2.
//  Copyright © 2018年 HMRL. All rights reserved.
//

import UIKit

class SHTabBarVC: UITabBarController {

    override func viewDidLoad() {
        super.viewDidLoad()

    }
    
    func setUpBarStyle(){
        //pss_1.这里有个疑问，不是说swift不用[]来调用方法了吗？怎么这里还在用？
        UINavigationBar.appearance().titleTextAttributes = [NSAttributedStringKey.foregroundColor:UIColor.white,NSAttributedStringKey.font:UIFont(name:"Heiti SC",size:18.0)!]
        
    }


}
