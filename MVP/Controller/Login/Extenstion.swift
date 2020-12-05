//
//  Extenstion.swift
//  MVP
//
//  Created by Hany Karam on 12/4/20.
//  Copyright © 2020 Hany Karam. All rights reserved.
//

import UIKit

extension LoginVC:LoginToDo{
    func getDataSuccessfully() {
        let vc = UIStoryboard(name: Storyboards.main, bundle: nil).instantiateViewController(withIdentifier: ScreenID.Home)
        self.navigationController?.pushViewController(vc, animated: true)
        
    }
    
    func showError(error: String) {
        print(error)
    }
    
    
}
