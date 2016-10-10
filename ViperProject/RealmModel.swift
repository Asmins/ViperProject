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
    var boolCheck = false
    
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
    
    func login(email:String,password:String,viewController:UIViewController) -> Bool{
        for i in 0..<result.count {
            if email == result[i].email {
                print("Same email")
                if password == result[i].passwordUser {
                    print("Same password")
                    boolCheck = true
                    break
                }else{
                    let alert = UIAlertController(title: "Error", message: "Check your email or password", preferredStyle: .alert)
                    let ok = UIAlertAction(title: "Ok", style: .default, handler: nil)
                    alert.addAction(ok)
                    viewController.present(alert, animated: true, completion: nil)
                    boolCheck = false
                }
            }else{
                print("It is not same ")
                boolCheck = false
            }
        }
        return boolCheck
    }
}
