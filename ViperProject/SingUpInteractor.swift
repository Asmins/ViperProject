//
//  SingUpInteractor.swift
//  ViperProject
//
//  Created by admin on 10.10.16.
//  Copyright © 2016 Mozi. All rights reserved.
//

import UIKit

class SingUpInteractor {
    var realmModel = RealmModel()
}

extension SingUpInteractor: SingUpInteractorProtocol {

    func createUser(userName:String,password:String,email:String) {
        self.realmModel.writeInDB(userName: userName, password: password, email: email)
    }
    
}
