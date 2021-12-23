//
//  CategoryCollectionViewCell.swift
//  FoodsCorner
//
//  Created by Chukwuemeka Jennifer on 17/12/2021.
//

import UIKit
import Kingfisher

class CategoryCollectionViewCell: UICollectionViewCell {
    
    static let identifier = String(describing: CategoryCollectionViewCell.self)

    @IBOutlet weak var categoryImageView: UIImageView!
    
    @IBOutlet weak var categoryTittleLabel: UILabel!
    
    func setup(category: DishCategory) {
        categoryTittleLabel.text = category.name
        categoryImageView.kf.setImage(with: category.image?.asUrl)
        print("Debuggg: \(category.name) --- \(category.image)")
        
    }

}
