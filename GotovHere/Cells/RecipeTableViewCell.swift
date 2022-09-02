//
//  RecipeCell.swift
//  GotovHere
//
//  Created by Daniil Lebedev on 31.08.2022.
//

import UIKit

class RecipeTableViewCell: UITableViewCell {

    @IBOutlet weak var recipeImage: UIImageView!
    @IBOutlet weak var recipeNameLabel: UILabel!
    @IBOutlet weak var recipePriceLabel: UILabel!
    
    let recipe = Recipe.getRecipe()
    
    override func awakeFromNib() {
        super.awakeFromNib()
    }
    
    func setupCell(recipe:Recipe){
        self.recipeImage.image = UIImage(named: recipe.image) ?? UIImage(systemName: "multiply.circle.fill")!
        self.recipeNameLabel.text = recipe.title
        self.recipePriceLabel.text = "\(recipe.description)"
    }
}



