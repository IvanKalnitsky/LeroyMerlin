//
//  ProductCell.swift
//  Project_Kalnitsky
//
//  Created by macbookp on 20.04.2021.
//

import UIKit

class ProductCollectionCell: UICollectionViewCell {
    
    static var reuseID = "ProductCollectionCell"
    
    let nameLabel: UILabel = {
        let label = UILabel()
        label.font = UIFont.systemFont(ofSize: 14, weight: .light)
        label.textColor = .black
        label.numberOfLines = 2
        label.translatesAutoresizingMaskIntoConstraints = false
        return label
    }()
    
    let mainImageView: UIImageView = {
        let imageView = UIImageView()
        imageView.translatesAutoresizingMaskIntoConstraints = false
        imageView.contentMode = .scaleAspectFit
        return imageView
    }()
    
    let priceLabel: UILabel = {
        let label = UILabel()
        label.font = UIFont.systemFont(ofSize: 18, weight: .heavy)
        label.textColor = .black
        label.translatesAutoresizingMaskIntoConstraints = false
        return label
    }()
    
    let currencyLabel: UILabel = {
        let label = UILabel()
        label.font = UIFont.systemFont(ofSize: 14, weight: .semibold)
        label.textColor = .black
        label.translatesAutoresizingMaskIntoConstraints = false
        label.text = "\u{20bd}/шт."
        return label
    }()
    
    
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        backgroundColor = .white
        contentView.addSubview(nameLabel)
        contentView.addSubview(mainImageView)
        contentView.addSubview(priceLabel)
        contentView.addSubview(currencyLabel)
        
        // mainImageView constraints
        mainImageView.topAnchor.constraint(equalTo: topAnchor, constant: 60).isActive = true
        mainImageView.widthAnchor.constraint(equalToConstant: Constants.productItemWidth).isActive = true
        mainImageView.heightAnchor.constraint(equalToConstant: Constants.productItemWidth).isActive = true
        mainImageView.centerXAnchor.constraint(equalTo: centerXAnchor).isActive = true
        
        //pricelabel constraints
        priceLabel.leadingAnchor.constraint(equalTo: leadingAnchor).isActive = true
        priceLabel.topAnchor.constraint(equalTo: mainImageView.bottomAnchor).isActive = true
        
        // currencyLabel constraints
        currencyLabel.leadingAnchor.constraint(equalTo: priceLabel.trailingAnchor, constant: 5).isActive = true
        currencyLabel.bottomAnchor.constraint(equalTo: priceLabel.bottomAnchor).isActive = true
        
        //nameLabel constraints
        nameLabel.leadingAnchor.constraint(equalTo: leadingAnchor).isActive = true
        nameLabel.trailingAnchor.constraint(equalTo: trailingAnchor).isActive = true
        nameLabel.topAnchor.constraint(equalTo: priceLabel.bottomAnchor, constant: 10).isActive = true
        
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
}
