//
//  RestaurantsCollectionViewCell.swift
//  RestaurantApp
//
//  Created by GEU on 28/01/26.
//

import UIKit

class RestaurantsCollectionViewCell: UICollectionViewCell {
    @IBOutlet weak var ImageView: UIImageView!
    
    @IBOutlet weak var restaurantNameLabel: UILabel!
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }
    func configureCell(restaurant: Restaurant) {
        if let imageName = restaurant.image.first {
            ImageView.image = UIImage(named: imageName)
        }
        else {
            ImageView.image = nil
        }
        restaurantNameLabel.text = restaurant.name
    }

}
