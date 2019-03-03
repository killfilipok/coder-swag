//
//  DataService.swift
//  coder-swag
//
//  Created by Philip on 3/3/19.
//  Copyright © 2019 Philip. All rights reserved.
//

import Foundation
class DataService {
    static let instance = DataService()
    
    private let categories = [
        Category(title: "SHIRTS", imageName: "shirts.png"),
        Category(title: "HOODIES", imageName: "hoodies.png"),
        Category(title: "HATS", imageName: "hats.png"),
        Category(title: "DIGITAL", imageName: "digital.png")
    ]
    
    private let hats = [
        Product(title: "Devslopes Logo", price: "$18", imageName: "hat01.png"),
        Product(title: "Devslopes Logo Hat Black", price: "$25", imageName: "hat02.png"),
        Product(title: "Devslopes Logo Hat White", price: "$25", imageName: "hat03.png"),
        Product(title: "Devslopes Logo Snapback", price: "$20", imageName: "hat04.png")
    ]
    
    private let hoodies = [
        Product(title: "Devslopes Logo Hoodie Gray", price: "$38", imageName: "hoodie01.png"),
        Product(title: "Devslopes Logo Hoodie Red", price: "$38", imageName: "hoodie02.png"),
        Product(title: "Devslopes Hoodie Gray", price: "$38", imageName: "hoodie03.png"),
        Product(title: "Devslopes Hoodie Black", price: "$38", imageName: "hoodie04.png")
    ]
    
    private let shirts = [
        Product(title: "Devslopes Logo Shirt Black", price: "$18", imageName: "shirt01.png"),
        Product(title: "Devslopes Logo Shirt Black", price: "$18", imageName: "shirt02.png"),
        Product(title: "Devslopes Logo Shirt Black", price: "$18", imageName: "shirt03.png"),
        Product(title: "Devslopes Logo Shirt Black", price: "$18", imageName: "shirt04.png"),
        Product(title: "Devslopes Logo Shirt Black", price: "$18", imageName: "shirt05.png")
    ]
    
    private let digitalGoods = [Product]()
    
    func getCategories() -> [Category]{
        return categories
    }
    
    func getProducts(productTitle:String) -> [Product]{
        switch productTitle {
        case "SHIRTS":
            return getShirts()
        case "HATS":
            return getHats()
        case "HOODIES":
            return getHoodies()
        case "DIGITAL":
           return getDigitalGoods()
        default:
           return  getShirts()
        }
    }
    
    func getHats() -> [Product]{
        return hats
    }
    func getHoodies() -> [Product]{
        return hoodies
    }
    func getShirts() -> [Product]{
        return shirts
    }
    func getDigitalGoods() -> [Product]{
        return digitalGoods
    }
}
