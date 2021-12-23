//
//  AllDishes.swift
//  FoodsCorner
//
//  Created by Chukwuemeka Jennifer on 22/12/2021.
//

import Foundation

struct AllDishes: Decodable {
    let categories: [DishCategory]?
    let populars: [Dish]?
    let specials: [Dish]?
}
