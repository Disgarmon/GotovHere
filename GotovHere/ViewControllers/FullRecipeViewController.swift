//
//  FullRecipeViewController.swift
//  GotovHere
//
//  Created by Daniil Lebedev on 01.09.2022.
//

import UIKit

class FullRecipeViewController: UIViewController {

    @IBOutlet weak var recipeImage: UIImageView!
    @IBOutlet weak var titleLabel: UILabel!
    @IBOutlet weak var descriptionLabel: UILabel!
    
    
    var recipe: Recipe!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        recipeImage.image = UIImage(named: recipe.image)
        titleLabel.text = recipe.title
        descriptionLabel.text = "\(recipe.description)"
    }
   
    
}

