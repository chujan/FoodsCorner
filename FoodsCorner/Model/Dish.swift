//
//  Dish.swift
//  FoodsCorner
//
//  Created by Chukwuemeka Jennifer on 18/12/2021.
//

import Foundation
struct Dish: Decodable {
    let id: String?
    let name: String?
    let description: String?
    let image: String?
    let calories: Int?
    
    var formattedCalories: String {
        return "\(calories ?? 0) calories"
    }
}
