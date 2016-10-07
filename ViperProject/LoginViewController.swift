//
//  LoginViewController.swift
//  ViperProject
//
//  Created by admin on 07.10.16.
//  Copyright © 2016 Mozi. All rights reserved.
//

import UIKit

class LoginViewController: UIViewController {

    @IBOutlet var textField: UITextField!
    @IBOutlet var passWordTextField: UITextField!
    
    var realmManager = RealmModel()
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    @IBAction func dissmisToRootView(_ sender: AnyObject) {
        self.dismiss(animated: true, completion: nil)
    }
    
    @IBAction func logibButton(_ sender: AnyObject) {
        self.dismiss(animated: true, completion: nil)
    }
    
}
