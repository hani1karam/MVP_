//
//  Exstestion.swift
//  MVP
//
//  Created by Hany Karam on 12/4/20.
//  Copyright © 2020 Hany Karam. All rights reserved.
//

import UIKit

 
extension HomeVC:HomePresnsterToDo{
    func getDataSuccessfully() {
        HomeTV.reloadData()
    }
    func showError(error: String) {
        print(error)
    }
}
extension HomeVC:UITableViewDelegate,UITableViewDataSource{
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return Home.HomeCount()
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "HomeTableViewCell", for: indexPath) as! HomeTableViewCell
        Home.reloadTitles(cell: cell, index: indexPath.row)
        Home.reloadCellProudctImage(cell: cell, index: indexPath.row)
        Home.reloadCelProudctlPrice(cell: cell, index: indexPath.row)
        return cell
    }
    
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return 268
    }
}
