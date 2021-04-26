//
//  ThemesCollectionView.swift
//  Project_Kalnitsky
//
//  Created by macbookp on 22.04.2021.
//

import UIKit

class ThemesCollectionView: UICollectionView, UICollectionViewDelegate, UICollectionViewDataSource, UICollectionViewDelegateFlowLayout {
    
  private let names = ThemeModel.names
    init() {
        let layout = UICollectionViewFlowLayout()
        layout.scrollDirection = .horizontal
        layout.minimumLineSpacing = Constants.themeHorizontalSpacing
        
        super.init(frame: .zero, collectionViewLayout: layout)
        backgroundColor = .white
        delegate = self
        dataSource = self
        translatesAutoresizingMaskIntoConstraints = false
        register(ThemesCollectionViewCell.self, forCellWithReuseIdentifier: ThemesCollectionViewCell.reuseID)
        showsHorizontalScrollIndicator = false
        showsVerticalScrollIndicator = false
    }
 
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return names.count
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cell = dequeueReusableCell(withReuseIdentifier: ThemesCollectionViewCell.reuseID, for: indexPath) as! ThemesCollectionViewCell
        cell.nameLabel.text = names[indexPath.item]
        if indexPath.item == 0 {
            cell.setColors()
            return cell
        } else {
            return cell
        }
    }
    
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, sizeForItemAt indexPath: IndexPath) -> CGSize {
        return CGSize(width:  Constants.themeItemWidth ,height: Constants.heightOfThemeCell)
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
}
