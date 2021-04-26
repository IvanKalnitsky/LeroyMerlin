//
//  ProfuctsCollectionView.swift
//  Project_Kalnitsky
//
//  Created by macbookp on 20.04.2021.
//

import UIKit

class ProductsCollectionView: UICollectionView, UICollectionViewDelegate, UICollectionViewDataSource, UICollectionViewDelegateFlowLayout {
    
    private var cells = [ProductModel]()
    
    init() {
        let layout = UICollectionViewFlowLayout()
        layout.scrollDirection = .horizontal
        layout.minimumLineSpacing = Constants.productHorizontalSpacing
        
        super.init(frame: .zero, collectionViewLayout: layout)
        backgroundColor = .white
        delegate = self
        dataSource = self
        translatesAutoresizingMaskIntoConstraints = false
        // Регистрируем ячейку
        register(ProductCollectionCell.self, forCellWithReuseIdentifier: ProductCollectionCell.reuseID)
        
        showsHorizontalScrollIndicator = false
        showsVerticalScrollIndicator = false
    }
    
    func set(cells: [ProductModel]) {
        self.cells = cells
    }
    
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return cells.count
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cell = dequeueReusableCell(withReuseIdentifier: ProductCollectionCell.reuseID, for: indexPath) as! ProductCollectionCell
        cell.nameLabel.text = cells[indexPath.item].name
        cell.mainImageView.image = cells[indexPath.item].image
        cell.priceLabel.text = "\(Int(cells[indexPath.item].price))"
        
        return cell
    }
    
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, sizeForItemAt indexPath: IndexPath) -> CGSize {
        return CGSize(width:  Constants.productItemWidth ,height: Constants.productItemHeight)
    }
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
}
