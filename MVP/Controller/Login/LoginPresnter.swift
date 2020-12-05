//
//  LoginPresnter.swift
//  MVP
//
//  Created by Hany Karam on 12/4/20.
//  Copyright © 2020 Hany Karam. All rights reserved.
//

import Foundation
protocol LoginToDo {
    func getDataSuccessfully()
    func showError(error: String)
    
}
class LoginPresenter{
    
    private var ViewLogin: LoginVC?
    private var loginModel:LoginModel?
    init(view: LoginVC) {
        self.ViewLogin = view
    }
    func LoginButtonClick(){
        guard let View = ViewLogin else {return}
        let param = ["email":View.EmailTxt.text!,
                     "password":View.PasswordTxt.text!]
        ViewLogin?.showLoading()
        NetWorkManager.instance.API(method: .post, url: login,parameters:param) { (err, status, response:LoginModel?) in
            self.ViewLogin?.HideLoading()
            if response?.status == true {
                print(response!)
                self.ViewLogin?.getDataSuccessfully()
                
            }
            else {
            }
        }
    }
}
