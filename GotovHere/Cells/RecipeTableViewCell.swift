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
    
    
    override func awakeFromNib() {
        super.awakeFromNib()
    }
    
    func setupCell(recipe:Recipe){
        self.recipeImage.image = recipe.image
        self.recipeNameLabel.text = recipe.title
        self.recipePriceLabel.text = "\(recipe.description)"
    }
}
