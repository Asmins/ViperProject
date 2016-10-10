//
//  LoginInteractor.swift
//  ViperProject
//
//  Created by admin on 10.10.16.
//  Copyright © 2016 Mozi. All rights reserved.
//

import UIKit

class LoginInteractor {
    var navitagion = LoginWireframe()
    var realmModel = RealmModel()
    var checkBool = false
}

extension LoginInteractor:LoginInteractorProtocol {

    func loginUser(email: String, password: String,viewController:UIViewController) {
        self.realmModel.getUserFromDataBase()
        checkBool = self.realmModel.login(email: email, password: password, viewController: viewController)
        
        if checkBool == true {
            self.navitagion.showHomeViewController()
        }else{
            print("Not cool")
        }
    }
    
}
