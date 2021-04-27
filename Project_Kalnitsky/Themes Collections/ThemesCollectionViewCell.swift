//
//  ThemesCollectionViewCell.swift
//  Project_Kalnitsky
//
//  Created by macbookp on 22.04.2021.
//

import UIKit

class ThemesCollectionViewCell: UICollectionViewCell {
    static var reuseID = "ThemesCollectionViewCell"
    
    private let backView: UIView = {
        let view = UIView()
        view.backgroundColor = #colorLiteral(red: 0.9606434703, green: 0.96062392, blue: 0.9729135633, alpha: 1)
        view.layer.cornerRadius = 5
        view.translatesAutoresizingMaskIntoConstraints = false
        return view
    }()
    
    let nameLabel: UILabel = {
        let label = UILabel()
        label.font = UIFont.systemFont(ofSize: 17, weight: .semibold)
        label.textColor = .black
        label.numberOfLines = 0
        label.translatesAutoresizingMaskIntoConstraints = false
        return label
    }()
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        contentView.addSubview(backView)
        contentView.addSubview(nameLabel)
        //MARK: - Constraints
        backView.leadingAnchor.constraint(equalTo: leadingAnchor).isActive = true
        backView.topAnchor.constraint(equalTo: topAnchor, constant: 30).isActive = true
        backView.heightAnchor.constraint(equalToConstant: Constants.themeItemWidth).isActive = true
        backView.trailingAnchor.constraint(equalTo: trailingAnchor).isActive = true
        nameLabel.topAnchor.constraint(equalTo: backView.topAnchor, constant: 10).isActive = true
        nameLabel.leadingAnchor.constraint(equalTo: leadingAnchor, constant: 10).isActive = true
        nameLabel.trailingAnchor.constraint(equalTo: trailingAnchor, constant: -10).isActive = true
    }
    
    func setColors() {
        backView.backgroundColor = #colorLiteral(red: 0.3268811405, green: 0.7674738765, blue: 0.2489330173, alpha: 1)
        nameLabel.textColor = .white
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
}
