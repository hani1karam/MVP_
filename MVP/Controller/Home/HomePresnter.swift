//
//  HomePresnter.swift
//  MVP
//
//  Created by Hany Karam on 12/4/20.
//  Copyright © 2020 Hany Karam. All rights reserved.
//

import Foundation
protocol reloadCellTitles {
    func reloadTitle(title: String)
}
protocol reloadCellProudctImage {
    func reloadCellProudctImage(image: ProductModelDatum)
}
protocol reloadCelProudctlPrice {
    func reloadCelProudctlPrice(price: Double)
}

protocol HomePresnsterToDo {
    func getDataSuccessfully()
    func showError(error: String)
}

class HomePresnster{
    private var view: HomeVC?
    private var product = [ProductModelDatum]()
    var id:String?
    init(view: HomeVC) {
        self.view = view
    }
    func ShowData(){
        view?.showLoading()
        NetWorkManager.instance.API(method: .get, url: proudct) { (err, status, response:ProductModel?) in
            self.view?.HideLoading()
            if err == nil {
                guard let data = response?.data?.data else{return}
                self.product = data
                self.view?.getDataSuccessfully()
            }
            else {
                
            }
            
        }
    }
    func HomeCount() -> Int{
        return product.count
    }
    func reloadTitles(cell: reloadCellTitles, index: Int){
        cell.reloadTitle(title: product[index].name ?? "")
        
    }
    func reloadCelProudctlPrice(cell: reloadCelProudctlPrice, index: Int){
        cell.reloadCelProudctlPrice(price: product[index].price ?? 0.0)
        
    }
    func reloadCellProudctImage(cell: reloadCellProudctImage, index: Int){
        cell.reloadCellProudctImage(image: product[index])
    }
    
    
}
