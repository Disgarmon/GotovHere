//
//  RecipeTVController.swift
//  GotovHere
//
//  Created by Daniil Lebedev on 02.09.2022.
//

import UIKit

class RecipeTVController: UITableViewController {

    var recipes = Recipe.getRecipe()
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        tableView.rowHeight = 150
      //  navigationItem.leftBarButtonItem = editButtonItem
    }
    
    

    // MARK: - Table view data source

    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        recipes.count
    }

   
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "reuseIdentifier", for: indexPath)
        let recipes = recipes[indexPath.row]
        var content = cell.defaultContentConfiguration()
        content.text = recipes.title
        content.secondaryText = recipes.description
        content.image = UIImage(named: recipes.image) ?? UIImage(systemName: "error")
        content.imageProperties.cornerRadius = 10
        cell.contentConfiguration = content
        return cell
    }
   
    // MARK: - UITableViewDelegate
    override func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        let recipe = recipes[indexPath.row]
        performSegue(withIdentifier: "recipeSegue", sender: recipe)
    }
    
    
    
    // MARK: - Navigation

    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        guard let vc = segue.destination as? FullRecipeViewController else { return }
        guard let indexPath = tableView.indexPathForSelectedRow else { return }
        vc.recipe = recipes[indexPath.row]
    }
    
    override func unwind(for unwindSegue: UIStoryboardSegue, towards subsequentVC: UIViewController) {
        
    }
    
}
