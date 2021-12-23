//
//  UIViewController+Extension.swift
//  FoodsCorner
//
//  Created by Chukwuemeka Jennifer on 20/12/2021.
//

import UIKit


extension UIViewController {
    
    static var identifier: String {
        return String(describing: self)
    }
    static func instatiate() -> Self {
        let storyboard = UIStoryboard(name: "Main", bundle: nil)
        return  storyboard.instantiateViewController(withIdentifier: identifier) as! Self
    }
}
