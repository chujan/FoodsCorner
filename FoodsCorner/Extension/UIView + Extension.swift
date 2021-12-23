//
//  UIView + Extension.swift
//  FoodsCorner
//
//  Created by Chukwuemeka Jennifer on 16/12/2021.
//

import UIKit

extension UIView {
    @IBInspectable var cornerRadius: CGFloat {
        get {return self.cornerRadius}
        set {
            self.layer.cornerRadius = newValue
        }
        
    }
}
