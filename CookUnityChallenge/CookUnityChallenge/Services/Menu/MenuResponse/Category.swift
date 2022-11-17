//
//  Category.swift
//  CookUnityChallenge
//
//  Created by Axel Mosiejko on 17/11/2022.
//

import Foundation

struct Category: Decodable {
    var title: String
    var meals: [Meal]
    
    private enum CodingKeys: String, CodingKey {
        case title
        case meals
    }
}
