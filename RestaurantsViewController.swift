//
//  RestaurantsViewController.swift
//  RestaurantApp
//
//  Created by GEU on 28/01/26.
//

import UIKit

class RestaurantsViewController: UIViewController {
    
    var dataModel: DataModel!
    
    var selectedCuisine: Cuisine?
    
    var restaurants: [Restaurant] = []

    @IBOutlet weak var restaurantsCollectionView: UICollectionView!
    override func viewDidLoad() {
        super.viewDidLoad()
        
        if let selectedCuisine  = selectedCuisine, let dataModel = dataModel {
            restaurants = dataModel.getRestaurantforCuisine(cuisine: selectedCuisine)
        }
        
        restaurantsCollectionView.register(UINib(nibName: "RestaurantsCollectionViewCell", bundle: nil), forCellWithReuseIdentifier: "restaurant_cell")
        
        if let flowLayout = restaurantsCollectionView.collectionViewLayout as? UICollectionViewFlowLayout {
            flowLayout.estimatedItemSize = .zero
            flowLayout.itemSize = CGSize(width:self.view.bounds.width, height: 250)
        }
        
        //generate compositional layout
        let layout = generateLayout()
        //change the layout to compositional layout
        restaurantsCollectionView.setCollectionViewLayout(layout, animated: true)
        
        restaurantsCollectionView.delegate = self
        restaurantsCollectionView.dataSource = self
    }
    func generateLayout() -> UICollectionViewLayout {
        let itemsize = NSCollectionLayoutSize(widthDimension: .fractionalWidth(0.5),
                                              heightDimension: .fractionalHeight(1.0))
        let item = NSCollectionLayoutItem(layoutSize: itemsize)
        
        let groupSize = NSCollectionLayoutSize(widthDimension: .fractionalWidth(1.0),
                                               heightDimension: .absolute(250.0))
        let group = NSCollectionLayoutGroup.horizontal(layoutSize: groupSize, repeatingSubitem: item, count: 2)
        group.interItemSpacing = .fixed(10)
        let section = NSCollectionLayoutSection(group: group)
        section.contentInsets = NSDirectionalEdgeInsets(top: 10, leading: 10, bottom: 10, trailing: 10)
        
        
        let layout = UICollectionViewCompositionalLayout(section: section)
        
        return layout
    }
}
    


extension RestaurantsViewController: UICollectionViewDataSource {
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        guard let selectedCuisine  = self.selectedCuisine else {
            return 0
        }
        return restaurants.count
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "restaurant_cell", for: indexPath)
        
        guard let selectedCuisine  = self.selectedCuisine else {
            return cell
        }
        
        let restaurant = restaurants[indexPath.row]
        
        guard let restaurantcell = cell as? RestaurantsCollectionViewCell else {
            return cell
        }
        restaurantcell.configureCell(restaurant: restaurant)
        
        restaurantcell.ImageView.layer.cornerRadius = 10
        restaurantcell.ImageView.layer.shadowRadius = 5.0
        restaurantcell.ImageView.layer.shadowColor = UIColor.black.cgColor
        
        return cell
    }
    
}
extension RestaurantsViewController: UICollectionViewDelegate {
    func collectionView(_ collectionView: UICollectionView, didSelectItemAt indexPath: IndexPath) {
        performSegue(withIdentifier: "restaurant_To_menu", sender: nil)
    }
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == "restaurant_To_menu" {
            if let destinationVC = segue.destination as? MenuViewController {
                destinationVC.dataModel = self.dataModel
                destinationVC.selectedCuisine = self.selectedCuisine
            }
        }
    }
}
func numberofsection(in collectionView: UICollectionView) -> Int {
    return 2
}
