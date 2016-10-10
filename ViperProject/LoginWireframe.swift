//
//  LoginWireframe.swift
//  ViperProject
//
//  Created by admin on 10.10.16.
//  Copyright © 2016 Mozi. All rights reserved.
//

import UIKit

class LoginWireframe {
    var viewController:LoginViewController?
}

extension LoginWireframe: LoginWireframeProtocol {
    
    func dismissView() {
        self.viewController?.dismiss(animated: true, completion: nil)
    }
    
    func showHomeViewController() {
        let controller = UIStoryboard.init(name: "Home", bundle: nil).instantiateViewController(withIdentifier: "HomeViewController") as! HomeViewController
        self.viewController?.present(controller, animated: true, completion: nil)
    }
}
