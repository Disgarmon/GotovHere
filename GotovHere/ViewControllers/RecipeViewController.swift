//
//  RecipeViewController.swift
//  GotovHere
//
//  Created by Daniil Lebedev on 29.08.2022.
//

import UIKit

class RecipeViewController: UIViewController {

    @IBOutlet weak var collectionView: UICollectionView!
    
    let recipe:Recipe = Recipe() // создал массив с рецептами
    
    override func viewDidLoad() {
        super.viewDidLoad()
        self.collectionView.register(UINib(nibName: "ProductCell", bundle: nil), forCellWithReuseIdentifier: "ProductCell")
        self.collectionView.dataSource = self
        self.collectionView.delegate = self
    }
    
}

extension RecipeViewController: UICollectionViewDelegate, UICollectionViewDataSource, UICollectionViewDelegateFlowLayout{
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return recipe.products.count // кол-во эл-в массива = кол-во ячеек
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "ProductCell", for: indexPath) as! ProductCell // я уверен, что тут будет именно ProductCell. Именно поэтому принудительное приведение
        let product = recipe.products[indexPath.item]
        cell.setupCell(product: product)
        return cell // по какому индексу передается в ячейку значение
    }
    
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, sizeForItemAt indexPath: IndexPath) -> CGSize {
        return CGSize(width: UIScreen.main.bounds.width, height: UIScreen.main.bounds.height) // ширина ячейки
    }
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, minimumLineSpacingForSectionAt section: Int) -> CGFloat {
        return 0 // пространство между ячейками
    }
    
}
