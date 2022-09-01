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
    
    let recipes = Recipe.getRecipe() // создал массив с рецептами
    
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
            
            guard let vc = storyboard?.instantiateViewController(identifier: "FullRecipeViewController") as? FullRecipeViewController else { return }
            
            vc.recipes = recipes
            vc.indexPath = IndexPath(row: indexRecipe, section: 0)
            self.navigationController?.pushViewController(vc, animated: true)
        }
        print("fullScreenHandler")
    }
}
