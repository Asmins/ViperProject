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
        self.splashViewController?.navigation = self
        self.window?.rootViewController = splashViewController
        self.window?.makeKeyAndVisible()
    }
    
    func showLoginViewController() {
        print("Some")
    }
    
    func showSingUpViewController() {
        let singUpViewController = UIStoryboard.init(name: "SingUp", bundle: nil).instantiateViewController(withIdentifier: "SingUpViewController") as! SingUpViewController
        singUpViewController.singUpInteractor = SingUpInteractor()
        singUpViewController.singUpInteractor?.viewController = singUpViewController
        singUpViewController.singUpWireframe = SingUpWireframe()
        singUpViewController.singUpWireframe?.singUpViewController = singUpViewController
        self.splashViewController?.present(singUpViewController, animated: true, completion: nil)
    }
}
