//
//  ActivityIndector.swift
//  MVP
//
//  Created by Hany Karam on 12/4/20.
//  Copyright © 2020 Hany Karam. All rights reserved.
//

import Foundation
import NVActivityIndicatorView
import PKHUD
class BaseViewController: UIViewController{
    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
    func showLoading() {
        HUD.show(.progress, onView: self.view)
        
    }
    func HideLoading() {
        
        HUD.hide()
        
    }
}
