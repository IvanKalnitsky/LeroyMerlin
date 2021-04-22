//
//  ProductTableViewCell.swift
//  Project_Kalnitsky
//
//  Created by macbookp on 20.04.2021.
//

import UIKit

class ProductTableViewCell: UITableViewCell {

    static var reuseID = "ProductTableViewCell"
    
    private var productsCollectonView = ProductsCollectionView()
    
    let categoryLabel: UILabel = {
        let label = UILabel()
        label.font = UIFont.systemFont(ofSize: 22, weight: .bold)
        label.textColor = #colorLiteral(red: 0.007841579616, green: 0.007844132371, blue: 0.007841020823, alpha: 1)
        label.translatesAutoresizingMaskIntoConstraints = false
        return label
    }()
    
    override init(style: UITableViewCell.CellStyle, reuseIdentifier: String?) {
        super.init(style: style, reuseIdentifier: reuseIdentifier)
        contentView.addSubview(productsCollectonView)
        contentView.addSubview(categoryLabel)
        
        //productsCollectonView constraint
        productsCollectonView.leadingAnchor.constraint(equalTo: leadingAnchor, constant: Constants.leftDistance).isActive = true
        productsCollectonView.trailingAnchor.constraint(equalTo:trailingAnchor).isActive = true
        productsCollectonView.topAnchor.constraint(equalTo: topAnchor).isActive = true
        productsCollectonView.bottomAnchor.constraint(equalTo: bottomAnchor).isActive = true
        // Category label constraint
        categoryLabel.leadingAnchor.constraint(equalTo: leadingAnchor, constant: Constants.leftDistance).isActive = true
        categoryLabel.trailingAnchor.constraint(equalTo: trailingAnchor).isActive = true
        categoryLabel.topAnchor.constraint(equalTo: topAnchor).isActive = true
     
       
    }
    
    
    func setProducts(cells: [ProductModel]) {
        productsCollectonView.set(cells: cells)
    }
    
    func setCategoryName(category: String) {
        categoryLabel.text = category
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }

}
