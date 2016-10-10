//
//  RootWireframe.swift
//  ViperProject
//
//  Created by admin on 10.10.16.
//  Copyright © 2016 Mozi. All rights reserved.
//

import UIKit

class RootWireframe {
    
    let splashWireframe = SplashWireframe()
    
    func application(didFinishLaunchingWithOptions launchOptions: [UIApplicationLaunchOptionsKey: Any]?,window:UIWindow) -> Bool {
        self.splashWireframe.window = window
        self.splashWireframe.showSplashViewController()
        return true
    }

    
}
