//
//  Data.swift
//  GotovHere
//
//  Created by Daniil Lebedev on 01.09.2022.
//

import Foundation
import UIKit

class RecipeData{
    static let shared = RecipeData()
    
    var recipe = [Recipe]()
    
    let title = ["tilte1", "tilte2", "tilte3", "tilte4", "tilte5", "tilte6",]
    
    let description = ["description1", "description2", "description3", "description4",  "description5",  "description6",]
    
    let image = ["2022-08-26 14.13.12", "2022-08-26 14.13.46", "2022-08-26 14.13.12", "2022-08-26 14.13.46", "2022-08-26 14.13.12", "2022-08-26 14.13.46"]
    
    init(){
    
    }
    
//    func setup(){
//
//        recipe = Recipe(
//            title: title.randomElement() ?? "",
//            description: description.randomElement() ?? "",
//            image: image.randomElement() ?? ""
//        )
//    }
    
}
 // let p1 = Recipe(title: "Название1", description: "Описание1", image: UIImage(named: "2022-08-26 14.13.12") ?? UIImage(systemName: "multiply.circle.fill")!)
// let p2 = Recipe(title: "Название2", description: "Описание2", image: UIImage(named: "2022-08-26 14.13.46") ?? UIImage(systemName: "multiply.circle.fill")!)

