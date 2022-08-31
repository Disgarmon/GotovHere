//
//  RecipeViewController.swift
//  GotovHere
//
//  Created by Daniil Lebedev on 29.08.2022.
//

import UIKit

class RecipeViewController: UIViewController {

    @IBOutlet weak var collectionView: UICollectionView!
    
    let recipe:RecipeList = RecipeList() // создал массив с рецептами
    
    override func viewDidLoad() {
        super.viewDidLoad()
        self.collectionView.register(UINib(nibName: "TableCell", bundle: nil), forCellWithReuseIdentifier: "TableCell")
        self.collectionView.dataSource = self
        self.collectionView.delegate = self
    }
}

extension RecipeViewController: UICollectionViewDelegate, UICollectionViewDataSource{
    
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return recipe.products.count // кол-во эл-в массива = кол-во ячеек
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "TableCell", for: indexPath) as! TableCell // я уверен, что тут будет именно ProductCell. Именно поэтому принудительное приведение
        
        return cell // по какому индексу передается в ячейку значение
    }
}
