//
//  Resipe.swift
//  GotovHere
//
//  Created by Daniil Lebedev on 29.08.2022.
//

import Foundation


struct Recipe{
    let title: String
    let description: String
    let image: String
}

extension Recipe{
    static func getRecipe() -> [Recipe] {
        
        var recipes: [Recipe] = []
        
        let titles = RecipeData.shared.title.shuffled()
        let desctiptions = RecipeData.shared.description.shuffled()
        let images = RecipeData.shared.image.shuffled()
        
        for index in 0...5 {
            let recipe = Recipe(
                title: titles[index],
                description: desctiptions[index],
                image: images[index])
            
            recipes.append(contentsOf: repeatElement(recipe, count: 1))
        }
        return recipes
    }
}
