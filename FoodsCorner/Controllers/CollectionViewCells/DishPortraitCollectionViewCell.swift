//
//  DishPortraitCollectionViewCell.swift
//  FoodsCorner
//
//  Created by Chukwuemeka Jennifer on 18/12/2021.
//

import UIKit

class DishPortraitCollectionViewCell: UICollectionViewCell {
    
    static let identifier = "DishPortraitCollectionViewCell"

    @IBOutlet weak var titleLabel: UILabel!
    @IBOutlet weak var DishImageView: UIImageView!
    @IBOutlet weak var caloriesLabel: UILabel!
    @IBOutlet weak var DescriptionLabel: UILabel!
    
    func setup(dish: Dish) {
        titleLabel.text = dish.name
        DishImageView.kf.setImage(with: dish.image?.asUrl)
        caloriesLabel.text = dish.formattedCalories
        DescriptionLabel.text = dish.description
    }

}
