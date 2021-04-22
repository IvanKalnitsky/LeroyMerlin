//
//  ViewController.swift
//  Project_Kalnitsky
//
//  Created by macbookp on 20.04.2021.
//

import UIKit

class ViewController: UIViewController, UITableViewDelegate,UITableViewDataSource {
    
    
    private var tableView = UITableView()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        createTable()
        tableView.backgroundColor = #colorLiteral(red: 0.3268811405, green: 0.7674738765, blue: 0.2489330173, alpha: 1)
    }
    
    func createTable() {
        tableView = UITableView(frame: view.bounds, style: .plain)
        tableView.separatorStyle = .none
        tableView.register(ProductTableViewCell.self, forCellReuseIdentifier: ProductTableViewCell.reuseID)
        tableView.register(SearcheTableViewCell.self, forCellReuseIdentifier: SearcheTableViewCell.reuseID)
        tableView.dataSource = self
        tableView.delegate = self
        view.addSubview(tableView)
        
    }
    
    
    func numberOfSections(in tableView: UITableView) -> Int {
        return 4
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        1
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let productCell = tableView.dequeueReusableCell(withIdentifier: ProductTableViewCell.reuseID) as! ProductTableViewCell
        let searchCell = tableView.dequeueReusableCell(withIdentifier: SearcheTableViewCell.reuseID) as! SearcheTableViewCell
        switch indexPath.section {
        case 0:
            return searchCell
        case 1:
            productCell.setProducts(cells: ProductModel.fetchViewedProduct())
            productCell.setCategoryName(category: Categories.viewed)
            return productCell
        case 2:
            productCell.setProducts(cells: ProductModel.fetchLimitedProduct())
            productCell.setCategoryName(category: Categories.limited)
            return productCell
        default:
            productCell.setProducts(cells: ProductModel.fetcBestProduct())
            productCell.setCategoryName(category: Categories.bestPrice)
            return productCell
        }
    }
    
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        
        switch indexPath.section {
        case 0:
            return Constants.heightOfSearchCell
        default:
            return Constants.itemHeight
        }
    }
}
