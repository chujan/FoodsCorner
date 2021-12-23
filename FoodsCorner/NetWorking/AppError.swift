//
//  AppError.swift
//  FoodsCorner
//
//  Created by Chukwuemeka Jennifer on 21/12/2021.
//

import Foundation


enum AppError: LocalizedError {
    case errorDecoding
    case unknownError
    case invalidUrl
    case serverError(String)
    
    
    var errorDescription: String? {
        switch self {
        case .errorDecoding:
            return "Response could not be decoded"
        case .unknownError:
            return " Bruuh!!! I have no idea what is going on"
        case .invalidUrl:
            return "Heyyy!!!!!!! Give me a valid URL"
        case .serverError(let error):
            return error
        }
    }
}
