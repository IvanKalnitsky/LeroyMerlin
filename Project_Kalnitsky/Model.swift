//
//  Model.swift
//  Project_Kalnitsky
//
//  Created by macbookp on 20.04.2021.
//

import Foundation
import UIKit

struct Constants {
  
    static let productHorizontalSpacing: CGFloat = 25
    static let productItemWidth = ((UIScreen.main.bounds.width - (Constants.productHorizontalSpacing * 2)) +  leftDistanceTableView) / 3
    static let minimumVerticalSpacing: CGFloat = 100
    static let productItemHeight = (UIScreen.main.bounds.height - 2 * minimumVerticalSpacing) / 2
    static let leftDistanceTableView: CGFloat = 15
    static let heightOfSearchCell = (UIScreen.main.bounds.height / 6)
    static let heightOfThemeCell = (productItemWidth * 2) - 50
    static let themeHorizontalSpacing: CGFloat = 15
    static let themeItemWidth = ((UIScreen.main.bounds.width - (Constants.themeHorizontalSpacing * 2)) +  leftDistanceTableView) / 3
}

struct ProductModel {
    var image: UIImage
    var name: String
    var price: Double
    
    static func fetchViewedProduct() -> [ProductModel] {
        var products = [ProductModel]()
        for i in 1...10 {
            products.append(ProductModel(image: UIImage(named: "1")!, name: "Недавно просмотренный продукт такой то такой такйо такой ", price: (Double(i) * 134) + 0.21))
        }
        return products.shuffled()
    }
    
    static func fetchLimitedProduct() -> [ProductModel] {
        var products = [ProductModel]()
        for i in 1...20 {
            products.append(ProductModel(image: UIImage(named: "2")!, name: "Ограниченный продукт такой то такой такйо такой", price: Double(i) * 321))
        }
        return products.shuffled()
    }
    
    static func fetcBestProduct() -> [ProductModel] {
    var products = [ProductModel]()
        for i in 1...20 {
            products.append(ProductModel(image: UIImage(named: "3")!, name: "Лучший продукт такой то такой такйо такой", price: Double(i) * 35))
        }
        return products.shuffled()
    }
}

struct ThemeModel {
    static var names = ["Каталог","Стройматериалы","Инструменты","Декор","Освещение","Cад"]
}

struct Categories {
    static let viewed: String = "Недавно просмотренные"
    static let limited: String = "Предложение ограничено"
    static let bestPrice: String = "Лучшая цена"
}
