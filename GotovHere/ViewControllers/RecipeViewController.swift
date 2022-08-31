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
    
    let recipe = RecipeList() // создал массив с рецептами
    
    override func viewDidLoad() {
        super.viewDidLoad()
        self.collectionView.register(UINib(nibName: "TableViewInCell", bundle: nil), forCellWithReuseIdentifier: "TableViewInCell")
        self.collectionView.dataSource = self
        self.collectionView.delegate = self
    }
}

extension RecipeViewController: UICollectionViewDelegate, UICollectionViewDataSource{
    
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return recipe.recipes.count // кол-во эл-в массива = кол-во ячеек
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "TableViewInCell", for: indexPath) as! TableViewInCell
       
        let recipes = self.recipe.recipes[indexPath.item]
        cell.setupCell(recipes: recipes)
        return cell
        
        return cell // по какому индексу передается в ячейку значение
    }
}
