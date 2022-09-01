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
    
    
    var recipes: Recipe!
    var indexPath = IndexPath(item: 0, section: 0)
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        
        // Do any additional setup after loading the view.
    }
    func setupCell(recipe:Recipe){
        self.recipeImage.image = UIImage(named: recipe.image) ?? UIImage(systemName: "multiply.circle.fill")!
        self.titleLabel.text = recipe.title
        self.descriptionLabel.text = "\(recipe.description)"
        
    }
}
