//
//  TableCell.swift
//  GotovHere
//
//  Created by Daniil Lebedev on 31.08.2022.
//

import UIKit

class TableViewInCell: UICollectionViewCell {

    @IBOutlet weak var tableView: UITableView!
    
    var fullScreenHandler:((_ cell: TableViewInCell, _ indexRecipe:Int) ->Void)?
    
    private var recipes: [Recipe] = []
    
    override func awakeFromNib() {
        super.awakeFromNib()
        self.tableView.dataSource = self
        self.tableView.delegate = self
        self.tableView.register(UINib(nibName: "RecipeTableViewCell", bundle: nil), forCellReuseIdentifier: "RecipeTableViewCell")
    }
    
    override func prepareForReuse() {
        super.prepareForReuse()
    }
    
    func setupCell(recipes:[Recipe]){
        self.recipes = recipes
        self.tableView.reloadData()
    }

}

extension TableViewInCell:UITableViewDataSource, UITableViewDelegate {
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return self.recipes.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "RecipeTableViewCell") as! RecipeTableViewCell
        cell.setupCell(recipe: self.recipes[indexPath.row])
        return cell
    } 
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        self.tableView.deselectRow(at: indexPath, animated: true)
       fullScreenHandler?(self,indexPath.row)
        
    }
    
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return UITableView.automaticDimension
    }
}

