//
//  SingUpWireframe.swift
//  ViperProject
//
//  Created by admin on 10.10.16.
//  Copyright © 2016 Mozi. All rights reserved.
//

import UIKit

class SingUpWireframe {
    var singUpViewController = SingUpViewController()
}

extension SingUpWireframe: SingUpWireframeProtocol {

    func dismissSingUpViewController() {
        self.singUpViewController.dismiss(animated: true, completion: nil)
    }
    
   /* func showHomeViewController() {
        let homeViewController = UIStoryboard.init(name: "Home", bundle: nil).instantiateViewController(withIdentifier: "HomeView") as! HomeViewController
        self.singUpViewController.present(homeViewController, animated: true, completion: nil)
    } */
}
