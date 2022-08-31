//
//  TableCell.swift
//  GotovHere
//
//  Created by Daniil Lebedev on 31.08.2022.
//

import UIKit

class TableCell: UICollectionViewCell {

    @IBOutlet weak var tableView: UITableView!
    
    private var recipes: [Recipe] = []
    override func awakeFromNib() {
        super.awakeFromNib()
        self.tableView.dataSource = self
        self.tableView.delegate = self
    }
    
    override func prepareForReuse() {
        prepareForReuse()
    }
    
    func setupCell(recipes:[Recipe]){
        self.recipes = recipes
        self.tableView.reloadData()
    }

}

extension TableCell:UITableViewDataSource, UITableViewDelegate {
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return self.recipes.count
    } // кол-во ячеек
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "") as! <#type#>
    } // какие именно ячейки
    
    func tableView(_ tableView: UITableView, heightForHeaderInSection section: Int) -> CGFloat {
        return 0.0
    }
    
    
    
}
