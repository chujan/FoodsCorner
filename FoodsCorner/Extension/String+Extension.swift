//
//  String+Extension.swift
//  FoodsCorner
//
//  Created by Chukwuemeka Jennifer on 17/12/2021.
//

import Foundation
extension String {
    var asUrl: URL? {
        return URL(string: self)
    }
}
