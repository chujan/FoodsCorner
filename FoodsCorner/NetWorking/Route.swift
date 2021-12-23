//
//  Route.swift
//  FoodsCorner
//
//  Created by Chukwuemeka Jennifer on 21/12/2021.
//

import Foundation
import SwiftUI

enum Route {
    static let baseUrl = "https://yummie.glitch.me"
    case fetchAllCategories
    case placeOrder(String)
    case fetchCategoryDishes(String)
    case fetchOrders
    
    var description: String {
        switch self {
        case.fetchAllCategories:
            return "/dish-categories"
            
        case .placeOrder(let dishId):
            return "/orders/\(dishId)"
            
        case .fetchCategoryDishes(let categoryId):
            return "/dishes/\(categoryId)"
        case .fetchOrders:
            return "/orders"
        }
    }
}
