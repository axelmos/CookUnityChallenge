//
//  Meal.swift
//  CookUnityChallenge
//
//  Created by Axel Mosiejko on 17/11/2022.
//

import Foundation

struct Meal: Decodable, Equatable {
    var name: String
    var price: Float
    
    private enum CodingKeys: String, CodingKey {
        case name
        case price
    }
}
