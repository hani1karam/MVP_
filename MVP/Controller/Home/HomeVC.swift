//
//  HomeVC.swift
//  MVP
//
//  Created by Hany Karam on 12/4/20.
//  Copyright © 2020 Hany Karam. All rights reserved.
//

import UIKit

class HomeVC: BaseViewController {
    @IBOutlet weak var HomeTV: UITableView!
    var Home:HomePresnster!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        let nib = UINib(nibName: "HomeTableViewCell", bundle: nil)
        HomeTV.register(nib, forCellReuseIdentifier: "HomeTableViewCell")
        HomeTV.dataSource = self
        HomeTV.delegate = self
        Home = HomePresnster(view: self)
        Home.ShowData()
    }
}

