//
//  ApiResponse.swift
//  FoodsCorner
//
//  Created by Chukwuemeka Jennifer on 21/12/2021.
//

import Foundation


struct ApiResponse<T: Decodable>: Decodable {
    let status: Int
    let message: String?
    let data: T?
    let error: String?
}
