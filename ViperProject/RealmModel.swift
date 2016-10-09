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
    var result = [UserModel]()
    
    func writeInDB(userName:String,password:String,email:String) {
        try! realm.write {
            user.email = email
            user.nameUser = userName
            user.passwordUser = password
            realm.add(user)
        }
    }
    
    func getUserFromDataBase() {
        result.append(contentsOf: realm.objects(UserModel.self))
    }
    
    func login(email:String,password:String,data:[UserModel]) {
        for i in 0..<data.count {
            if email == data[i].email {
                print("Same email")
                if password == data[i].passwordUser {
                    print("Same password")
                    break
                }
            }else{
                print("It is not same ")
            }
        }
    }
    
}
