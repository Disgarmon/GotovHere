//
//  RecipeCell.swift
//  GotovHere
//
//  Created by Daniil Lebedev on 31.08.2022.
//

import UIKit

class RecipeCell: UITableViewCell {

    @IBOutlet weak var recipeImage: UIImageView!
    
    @IBOutlet weak var recipeNameLabel: UILabel!
    @IBOutlet weak var recipePriceLabel: UILabel!
    
    override func awakeFromNib() {
        super.awakeFromNib()
    }
    
    func sepupCell(){
        
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }
    
}
