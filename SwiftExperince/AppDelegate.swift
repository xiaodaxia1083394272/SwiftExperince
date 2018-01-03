//
//  AppDelegate.swift
//  SwiftExperince
//
//  Created by HMRL on 2018/1/2.
//  Copyright © 2018年 HMRL. All rights reserved.
//

import UIKit

@UIApplicationMain
class AppDelegate: UIResponder, UIApplicationDelegate {

    var window: UIWindow?


    func application(_ application: UIApplication, didFinishLaunchingWithOptions launchOptions: [UIApplicationLaunchOptionsKey: Any]?) -> Bool {
        
        self.window = UIWindow(frame: UIScreen.main.bounds)
        self.window?.backgroundColor = UIColor.white
//        self.window?.rootViewController =
        //设置导航栏和标签栏样式
        setUpBarStyle();
        
        //欢迎导航页面
        showWelcome();

        return true
    }
    
    func setUpBarStyle(){
        
        /**
         *  导航栏样式
         */
        UINavigationBar.appearance().titleTextAttributes = [NSAttributedStringKey.foregroundColor: UIColor.white, NSAttributedStringKey.font: UIFont(name: "Heiti SC", size: 18.0)!]
        UINavigationBar.appearance().barTintColor = UIColor.red
        
        /**
         *  底部TabBar的颜色
         */
        UITabBar.appearance().shadowImage = UIImage()
        UITabBar.appearance().tintColor = UIColor.red
        UITabBar.appearance().backgroundColor = UIColor.white
        UITabBar.appearance().barTintColor = UIColor.green
        //        UITabBar.appearance().selectedImageTintColor = UIColor.clearColor()
        
        /**
         *  底部TabBar字体正常状态颜色
         */
        UITabBarItem.appearance().setTitleTextAttributes([NSAttributedStringKey.foregroundColor: UIColor.black, NSAttributedStringKey.font: UIFont.systemFont(ofSize: 13)], for: UIControlState.normal)
        
        /**
         *  底部TabBar字体选择状态颜色
         */
        UITabBarItem.appearance().setTitleTextAttributes([NSAttributedStringKey.foregroundColor: UIColor.red, NSAttributedStringKey.font: UIFont.systemFont(ofSize: 13)], for: UIControlState.selected)
        
    }
    
    //  MARK: - 欢迎界面
    func showWelcome() {
        
        /**
//         *  判断欢迎界面是否已经执行
//         */
//
//        let userDefault = UserDefaults.standard
//        let appVersion: String = Bundle.main.object(forInfoDictionaryKey: "CFBundleShortVersionString") as! String
//
//
//        if (userDefault.string(forKey: Constants.HDAppVersion)) == nil {
//
//            //第一次进入
//            userDefault.setValue(appVersion, forKey: Constants.HDAppVersion)
//            userDefault.synchronize()
//            self.window?.rootViewController = WelcomeController()
//
//        } else {
//
//            //版本升级后，根据版本号来判断是否进入
//            let version: String = (userDefault.string(forKey: Constants.HDAppVersion))!
//            if ( appVersion == version) {
        
                //                UIApplication.shared.setStatusBarStyle(UIStatusBarStyle.lightContent, animated: true)
                self.window?.rootViewController = MainViewController()
                
//            } else {
//
//                userDefault.setValue(appVersion, forKey: Constants.HDAppVersion)
//                userDefault.synchronize()
//                self.window?.rootViewController = WelcomeController()
//
//            }
        
//        }
        
    }




}

