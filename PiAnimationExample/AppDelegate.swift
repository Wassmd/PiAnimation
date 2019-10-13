//
//  AppDelegate.swift
//  PiAnimationExample
//
//  Created by Mohammed Wasimuddin on 13.10.19.
//  Copyright © 2019 Wasim. All rights reserved.
//

import UIKit
import PiAnimation

@UIApplicationMain
class AppDelegate: UIResponder, UIApplicationDelegate {


    var window: UIWindow?
    
    func application(_ application: UIApplication, didFinishLaunchingWithOptions launchOptions: [UIApplication.LaunchOptionsKey: Any]?) -> Bool {

        window = UIWindow(frame: UIScreen.main.bounds)
        window?.rootViewController = PiAnimationViewController()
        
        window?.makeKeyAndVisible()
        return true
    }
}

