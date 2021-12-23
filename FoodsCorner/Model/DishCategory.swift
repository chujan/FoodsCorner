//
//  DishCategory.swift
//  FoodsCorner
//
//  Created by Chukwuemeka Jennifer on 17/12/2021.
//

import Foundation

struct DishCategory: Decodable {
    let id: String?
    let name: String?
    let image: String?
    
    enum  CodingKeys: String, CodingKey {
        case id
        case name = "title"
        case image
    }
}
