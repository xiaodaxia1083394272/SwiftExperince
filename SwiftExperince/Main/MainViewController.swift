//
//  MainViewController.swift
//  SwiftExperince
//
//  Created by HMRL on 2018/1/3.
//  Copyright © 2018年 HMRL. All rights reserved.
//

import UIKit

class MainViewController: UITabBarController ,UITabBarControllerDelegate{
    
    var hdhm01vc: HDHM01Controller!
    var hdcg01vc: HDHM01Controller!


    override func viewDidLoad() {
        super.viewDidLoad()
        setupTabBarView()

    }
    
    override func viewDidAppear(_ animated: Bool) {
        super.viewDidAppear(animated);
        
    }
    
    //初始化tabbar
    func setupTabBarView() {
        //pss_3.如果是在oc中，一般会设置个初始值，不过swift因为可选值的原因，不喜欢给初始值，不知道这种写法好不好
        var navc:UINavigationController!
        
        /**
         *  首页
         */
        if hdhm01vc == nil {
            
            hdhm01vc = HDHM01Controller()
            hdhm01vc.tabBarItem = UITabBarItem(title: "菜谱", image: UIImage(named: "tab_icon_off_01")?.withRenderingMode(UIImageRenderingMode.alwaysOriginal), selectedImage: UIImage(named: "tab_icon_on_01")?.withRenderingMode(UIImageRenderingMode.alwaysOriginal))
            hdhm01vc.title = "菜谱"
            navc = UINavigationController(rootViewController: hdhm01vc)
            self.addChildViewController(navc)
            
        }
        
        /**
         *  分类
         */
        if hdcg01vc == nil {
            
            hdcg01vc = HDHM01Controller()
            hdcg01vc.tabBarItem = UITabBarItem(title: "分类", image: UIImage(named: "tab_icon_off_03")?.withRenderingMode(UIImageRenderingMode.alwaysOriginal), selectedImage: UIImage(named: "tab_icon_on_03")?.withRenderingMode(UIImageRenderingMode.alwaysOriginal))
            hdcg01vc.title = "分类"
            navc = UINavigationController(rootViewController: hdcg01vc)
            self.addChildViewController(navc)
            
        }

        
    }



}
