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
    
    var navigation:LoginWireframe!
    var interactor:LoginInteractor!
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
    @IBAction func dissmisToRootView(_ sender: AnyObject) {
        self.navigation.dismissView()
    }
    
    @IBAction func logibButton(_ sender: AnyObject) {
        self.interactor.loginUser(email: textField.text!, password: passWordTextField.text!, viewController: self)
    }
}
