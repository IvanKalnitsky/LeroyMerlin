//
//  ThemesTableViewCell.swift
//  Project_Kalnitsky
//
//  Created by macbookp on 26.04.2021.
//

import UIKit

class ThemesTableViewCell: UITableViewCell {

    static var reuseID = "ThemesTableViewCell"
    
    private var themesCollectionView = ThemesCollectionView()
    
    override init(style: UITableViewCell.CellStyle, reuseIdentifier: String?) {
        super.init(style: style, reuseIdentifier: reuseIdentifier)
        contentView.addSubview(themesCollectionView)
        
        themesCollectionView.leadingAnchor.constraint(equalTo: leadingAnchor, constant: Constants.leftDistanceTableView).isActive = true
        themesCollectionView.topAnchor.constraint(equalTo: topAnchor).isActive = true
        themesCollectionView.trailingAnchor.constraint(equalTo: trailingAnchor).isActive = true
        themesCollectionView.bottomAnchor.constraint(equalTo: bottomAnchor).isActive = true
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
}
