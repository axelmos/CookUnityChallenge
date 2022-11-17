//
//  ResponseData.swift
//  CookUnityChallenge
//
//  Created by Axel Mosiejko on 17/11/2022.
//

import Foundation

struct ResponseData: Decodable {
    var categories: [Category]
    
    private enum CodingKeys: String, CodingKey {
        case categories = "categories"
    }
}
