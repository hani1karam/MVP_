//
//  ViewController.swift
//  MVP
//
//  Created by Hany Karam on 12/4/20.
//  Copyright © 2020 Hany Karam. All rights reserved.
//

import UIKit

class LoginVC: BaseViewController {
    @IBOutlet weak var EmailTxt: UITextField!
    @IBOutlet weak var PasswordTxt: UITextField!
    var login:LoginPresenter!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        login = LoginPresenter(view: self)
        
    }
    
    @IBAction func LoginBtn(_ sender: Any) {
        login.LoginButtonClick()
    }
    
}

