//
//  onboardingCollectionViewCell.swift
//  FoodsCorner
//
//  Created by Chukwuemeka Jennifer on 16/12/2021.
//

import UIKit

class onboardingCollectionViewCell: UICollectionViewCell {
    
    static let identifier = String(describing: onboardingCollectionViewCell.self)
    
    @IBOutlet weak var slideImageView: UIImageView!
    @IBOutlet weak var slideTitleLabel: UILabel!
    @IBOutlet weak var slideDescriptionLabel: UILabel!
    
    func setup(_ slide: onboardingSlide) {
        slideImageView.image = slide.image
        slideTitleLabel.text = slide.title
        slideDescriptionLabel.text = slide.description
        
    }
}
