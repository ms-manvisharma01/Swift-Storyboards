//
//  ViewController.swift
//  RestaurantApp
//
//  Created by GEU on 28/01/26.
//

import UIKit

class CuisineViewController: UIViewController {
    
    var dataModel = DataModel()
    
    var cuisines : [Cuisine] = []

    @IBOutlet weak var CuisineCollectionView: UICollectionView!
    
    override func viewDidLoad() {
        //title = "Cuisine"
        super.viewDidLoad()
        
        cuisines = dataModel.getCuisines()
        
        //register the cuisine cell
        CuisineCollectionView.register(UINib(nibName: "CuisineCollectionViewCell", bundle: nil), forCellWithReuseIdentifier: "cuisine_cell")
        
        // get the layout for the collection view
        guard let layout = CuisineCollectionView.collectionViewLayout as? UICollectionViewFlowLayout else{
            return
        }
        layout.estimatedItemSize = .zero
        
        layout.itemSize = CGSize(width: self.view.bounds.width , height: 300)
                                            //when divide by 2 or  when subtracted by any no then 2 cells fall in same row
        
        CuisineCollectionView.dataSource = self
        CuisineCollectionView.delegate = self
        
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        
        print("prepare method called")
        
        guard let indexPaths = CuisineCollectionView.indexPathsForSelectedItems else {
            return
        }
        
        guard let selectedItemIndexPath = indexPaths.first else {
            return
        }
        
        let cuisine = cuisines[selectedItemIndexPath.row]
        
        print("prepare method for each item selected \(cuisine)")
        
        if let destinationViewController = segue.destination as? RestaurantsViewController {
            //send the cuisine to restaurant vc
            destinationViewController.selectedCuisine = cuisine
            //send the data model to restaurant vc
            destinationViewController.dataModel = dataModel
        }
    }
}

extension CuisineViewController: UICollectionViewDataSource {
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return cuisines.count
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        
        // creating the cell for collection view
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "cuisine_cell", for: indexPath)
        //get cuisine cell for index path from the array
        let cuisine = cuisines[indexPath.row]
        
        if let cuisineCell = cell as? CuisineCollectionViewCell {
            cuisineCell.configureCell(cuisine: cuisine)
        }
        return cell
    }
}

extension CuisineViewController: UICollectionViewDelegate {
    func collectionView(_ collectionView: UICollectionView, didSelectItemAt indexPath: IndexPath) {
        let cuisine = cuisines[indexPath.row]
        print("\(cuisine)")
        performSegue(withIdentifier: "cuisine_To_restaurant", sender: nil)
    }
}
