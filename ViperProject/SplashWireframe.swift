//
//  SplashWireframe.swift
//  ViperProject
//
//  Created by admin on 10.10.16.
//  Copyright © 2016 Mozi. All rights reserved.
//

import UIKit

class SplashWireframe {
    var splashViewController: SplashViewController?
    var window:UIWindow?
}

extension SplashWireframe: SplashWireframeProtocol {

    func showSplashViewController() {
        let splashViewController = UIStoryboard.init(name: "Splash", bundle: nil).instantiateViewController(withIdentifier: "SplashViewController") as! SplashViewController
        self.splashViewController = splashViewController
        self.window?.rootViewController = splashViewController
        self.window?.makeKeyAndVisible()
    }
    
    func showLoginViewController() {
        print("Some")
    }
    
    func showSingUpViewController() {
        print("Some")
    }
}
