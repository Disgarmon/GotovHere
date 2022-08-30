//
//  Resipe.swift
//  GotovHere
//
//  Created by Daniil Lebedev on 29.08.2022.
//

import Foundation
import UIKit

struct Product{
    let title: String
    let description: String
    let image: UIImage
}

class Recipe{
    var products = [Product]()
    
    init() {
        setup()
    }
 func setup(){
        let p1 = Product(title: "Название1", description: "Описание1", image: "URL")
     let p2 = Product(title: "Название2", description: "Описание2", image: "URL2")
     self.products = [p1, p2]
    }
}
