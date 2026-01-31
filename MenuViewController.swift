//
//  MenuViewController.swift
//  RestaurantApp
//
//  Created by GEU on 29/01/26.
//

import UIKit

class MenuViewController: UIViewController
{
    var dataModel: DataModel!
    var selectedCuisine: Cuisine?
    var dishes: [Dish] = []
    
    @IBOutlet weak var menuCollectionView: UICollectionView!
    
    override func viewDidLoad()
    {
        super.viewDidLoad()
        if let selectedCuisine = selectedCuisine, let dataModel = dataModel
        {
            dishes = dataModel.getDishesforCuisine(cuisine: selectedCuisine)
            self.navigationItem.title = "\(selectedCuisine.rawValue) Dishes"
        }
        menuCollectionView.register(UINib(nibName: "MenuCollectionViewCell", bundle: nil), forCellWithReuseIdentifier: "menu_cell")
        let layout = generateLayout()
        menuCollectionView.setCollectionViewLayout(layout, animated: true)
        
        menuCollectionView.dataSource = self
    }
    
    func generateLayout() -> UICollectionViewLayout {
        let itemSize = NSCollectionLayoutSize(widthDimension: .fractionalWidth(0.5),
                                              heightDimension: .fractionalHeight(1.0))
        let item = NSCollectionLayoutItem(layoutSize: itemSize)
        item.contentInsets = NSDirectionalEdgeInsets(top: 5, leading: 5, bottom: 5, trailing: 5)
        
        let groupSize = NSCollectionLayoutSize(widthDimension: .fractionalWidth(1.0),
                                               heightDimension: .absolute(220.0))
        let group = NSCollectionLayoutGroup.horizontal(layoutSize: groupSize, repeatingSubitem: item, count: 2)
        
        let section = NSCollectionLayoutSection(group: group)
        section.contentInsets = NSDirectionalEdgeInsets(top: 10, leading: 10, bottom: 10, trailing: 10)
        
        let layout = UICollectionViewCompositionalLayout(section: section)
        
        return layout
    }
}

extension MenuViewController: UICollectionViewDataSource {
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return dishes.count
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "menu_cell", for: indexPath)
        
        let dish = dishes[indexPath.row]
        
        guard let menuCell = cell as? MenuCollectionViewCell else {
            return cell
        }
        
        menuCell.configureCell(dish: dish)
        menuCell.dishesImageView.layer.cornerRadius = 10
        
        return menuCell
    }
}

