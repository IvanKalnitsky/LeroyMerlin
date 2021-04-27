//
//  SearcheTableViewCell.swift
//  Project_Kalnitsky
//
//  Created by macbookp on 22.04.2021.
//

import UIKit

class SearcheTableViewCell: UITableViewCell {
    
    static var reuseID = "SearcheTableViewCell"

    let nameLabel: UILabel = {
        let label = UILabel()
        label.font = UIFont.systemFont(ofSize: 30, weight: .heavy)
        label.textColor = .white
        label.translatesAutoresizingMaskIntoConstraints = false
        label.text = "Поиск товаров"
        return label
    }()
    
    let searchTF: UITextField = {
        let textfield = UITextField()
        textfield.borderStyle = .roundedRect
        textfield.placeholder = " Поиск"
        textfield.isEnabled = false
        textfield.translatesAutoresizingMaskIntoConstraints = false
        return textfield
    }()
    
    let shtrihButton: UIButton = {
        let button = UIButton()
        button.backgroundColor = .white
        button.layer.cornerRadius = 5
        let image = UIImage(named: "shtrih")!
        button.setImage(image, for: .normal)
        button.translatesAutoresizingMaskIntoConstraints = false
        return button
    }()
    
    override init(style: UITableViewCell.CellStyle, reuseIdentifier: String?) {
        super.init(style: style, reuseIdentifier: reuseIdentifier)
        backgroundColor = #colorLiteral(red: 0.3268811405, green: 0.7674738765, blue: 0.2489330173, alpha: 1)
        selectionStyle = .none
        contentView.addSubview(nameLabel)
        contentView.addSubview(searchTF)
        contentView.addSubview(shtrihButton)
        //MARK: - Constraints
        // nameLabel
        nameLabel.leadingAnchor.constraint(equalTo: leadingAnchor, constant: Constants.leftDistanceTableView).isActive = true
        nameLabel.topAnchor.constraint(equalTo: topAnchor, constant: 35).isActive = true
        // shtrihbutton
        shtrihButton.topAnchor.constraint(equalTo: nameLabel.bottomAnchor, constant: 15).isActive = true
        shtrihButton.trailingAnchor.constraint(equalTo: trailingAnchor, constant: -Constants.leftDistanceTableView).isActive = true
        shtrihButton.widthAnchor.constraint(equalToConstant: 40).isActive = true
        shtrihButton.heightAnchor.constraint(equalToConstant: 40).isActive = true
        // searchTF
        searchTF.leadingAnchor.constraint(equalTo: nameLabel.leadingAnchor).isActive = true
        searchTF.heightAnchor.constraint(equalToConstant: 40).isActive = true
        searchTF.topAnchor.constraint(equalTo: shtrihButton.topAnchor).isActive = true
        searchTF.trailingAnchor.constraint(equalTo: shtrihButton.leadingAnchor, constant: -15).isActive = true
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
}
