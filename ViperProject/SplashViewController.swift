//
//  SplashViewController.swift
//  ViperProject
//
//  Created by admin on 07.10.16.
//  Copyright © 2016 Mozi. All rights reserved.
//

import UIKit
import RealmSwift

class SplashViewController: UIViewController {

    var navigation: SplashWireframe?
    
    override func viewDidLoad() {
        super.viewDidLoad()
        print(Realm.Configuration.defaultConfiguration.fileURL)
        // Do any additional setup after loading the view.
    }
    
    @IBAction func loginButton(_ sender: AnyObject) {
        self.navigation?.showLoginViewController()
    }
    
    @IBAction func singUpButton(_ sender: AnyObject) {
        self.navigation?.showSingUpViewController()
    }
    
}
