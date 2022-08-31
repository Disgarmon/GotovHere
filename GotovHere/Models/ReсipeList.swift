//
//  Resipe.swift
//  GotovHere
//
//  Created by Daniil Lebedev on 29.08.2022.
//

import Foundation
import UIKit

struct Recipe{
    let title: String
    let description: String
    let image: UIImage
}

class RecipeList{
    
    var recipes = [Recipe]()
    
    init() {
        setup()
    }
    
 func setup(){
     let p1 = Recipe(title: "Название1", description: "Описание1", image: UIImage(named: "2022-08-26 14.13.12") ?? UIImage(systemName: "multiply.circle.fill")!)
     let p2 = Recipe(title: "Название2", description: "Описание2", image: UIImage(named: "2022-08-26 14.13.46") ?? UIImage(systemName: "multiply.circle.fill")!)
     recipes.append(p1)
     recipes.append(p2)
    }
}
extension String{
    func widthOfString(usingFont font: UIFont) -> CGFloat {
             let fontAttributes = [NSAttributedString.Key.font: font]
             let size = (self as NSString).size(withAttributes: fontAttributes)
             return ceil(size.width)
    }
}
