//
//  RecipeViewController.swift
//  GotovHere
//
//  Created by Daniil Lebedev on 29.08.2022.
//

import UIKit

class RecipeViewController: UIViewController {

    // MARK: - IB Outlets
    @IBOutlet weak var collectionView: UICollectionView!
    
    let recipes = Recipe.getRecipe() 
    
    override func viewDidLoad() {
        super.viewDidLoad()
        self.collectionView.register(UINib(nibName: "TableViewInCell", bundle: nil), forCellWithReuseIdentifier: "TableViewInCell")
        self.collectionView.dataSource = self
        self.collectionView.delegate = self
    
    }
}

extension RecipeViewController: UICollectionViewDelegate, UICollectionViewDataSource{
    
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return recipes.count
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "TableViewInCell", for: indexPath) as! TableViewInCell
       
        let recipes = recipes[indexPath.item]
        cell.fullScreenHandler = fullScreenHandler
        cell.setupCell(recipes: [recipes])
        return cell 
    }
}

extension RecipeViewController{
    func fullScreenHandler(cell: TableViewInCell, indexRecipe:Int){
        if let indexPath = self.collectionView.indexPath(for: cell){
            let recipes = recipes[indexPath.item]
            func prepare(for segue: UIStoryboardSegue, sender: Any?) {
                guard segue.identifier == "recipeSegue" else { return }
                guard let vc = segue.destination as? FullRecipeViewController else { return }
                
                vc.recipes = [recipes]
                vc.indexPath = indexPath
            }
        }
        performSegue(withIdentifier: "recipeSegue", sender: nil)
        print("fullScreenHandler")
        
    }
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        guard segue.identifier == "recipeSegue" else { return }
        guard let vc = segue.destination as? FullRecipeViewController else { return }
        
        vc.recipes = recipes
    }
}


