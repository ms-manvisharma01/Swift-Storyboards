//
//  MenuCollectionViewCell.swift
//  RestaurantApp
//
//  Created by GEU on 29/01/26.
//

import UIKit

class MenuCollectionViewCell: UICollectionViewCell {

    @IBOutlet weak var dishesImageView: UIImageView!
    @IBOutlet weak var dishNameLabel: UILabel!
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }
    func configureCell(dish: Dish){
        if let imageName = dish.image.first {
            dishesImageView.image = UIImage(named: imageName)
        }
        else {
            dishesImageView.image = nil
        }
        dishesImageView.contentMode = .scaleAspectFill
        dishesImageView.clipsToBounds = true
        dishNameLabel.text = dish.name
        
    }

}
