//
//  CuisineCollectionViewCell.swift
//  RestaurantApp
//
//  Created by GEU on 28/01/26.
//

import UIKit

class CuisineCollectionViewCell: UICollectionViewCell {

    @IBOutlet weak var ImageView: UIImageView!
    @IBOutlet weak var cuisineLabel: UILabel!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }
    func configureCell(cuisine:Cuisine){
        ImageView.image = UIImage(named: cuisine.imageName)
        cuisineLabel.text = cuisine.rawValue
                            // only happens when we link our enum with a primitive type 
    }
}
