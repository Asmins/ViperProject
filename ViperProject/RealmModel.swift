//
//  RealmModel.swift
//  ViperProject
//
//  Created by admin on 07.10.16.
//  Copyright © 2016 Mozi. All rights reserved.
//

import Foundation
import RealmSwift

class RealmModel {
    
    let user = UserModel()
    let realm = try! Realm()

    
    func writeInDB(userName:String,password:String,email:String) {
        try! realm.write {
            user.email = email
            user.nameUser = userName
            user.passwordUser = password
            realm.add(user)
        }
    }
    
    func getUserFromDataBase() {
        print(realm.objects(UserModel))
    }
}
