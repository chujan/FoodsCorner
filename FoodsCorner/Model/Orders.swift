//
//  Orders.swift
//  FoodsCorner
//
//  Created by Chukwuemeka Jennifer on 21/12/2021.
//

import Foundation

struct Order: Decodable {
    let id: String?
    let name: String?
    let dish: Dish?
}
