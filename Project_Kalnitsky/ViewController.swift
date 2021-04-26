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
    }
    
    func createTable() {
        tableView = UITableView(frame: view.bounds, style: .plain)
        tableView.separatorStyle = .none
        tableView.register(ProductTableViewCell.self, forCellReuseIdentifier: ProductTableViewCell.reuseID)
        tableView.register(SearcheTableViewCell.self, forCellReuseIdentifier: SearcheTableViewCell.reuseID)
        tableView.register(ThemesTableViewCell.self, forCellReuseIdentifier: ThemesTableViewCell.reuseID)
        tableView.dataSource = self
        tableView.delegate = self
        tableView.backgroundColor = #colorLiteral(red: 0.3268811405, green: 0.7674738765, blue: 0.2489330173, alpha: 1)
        view.addSubview(tableView)
    }
    
    func numberOfSections(in tableView: UITableView) -> Int {
        return 5
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        1
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let productCell = tableView.dequeueReusableCell(withIdentifier: ProductTableViewCell.reuseID) as! ProductTableViewCell
        let searchCell = tableView.dequeueReusableCell(withIdentifier: SearcheTableViewCell.reuseID) as! SearcheTableViewCell
        let themeCell = tableView.dequeueReusableCell(withIdentifier: ThemesTableViewCell.reuseID) as! ThemesTableViewCell
        switch indexPath.section {
        case 0:
            return searchCell
        case 1:
            return themeCell
        case 2:
            productCell.setProducts(cells: ProductModel.fetchViewedProduct())
            productCell.setCategoryName(category: Categories.viewed)
            productCell.sizeToFit()
            productCell.layoutIfNeeded()
            return productCell
        case 3:
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
        case 1 :
            return Constants.heightOfThemeCell 
        default:
            return Constants.productItemHeight
        }
    }
}
