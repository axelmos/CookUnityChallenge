//
//  MenuDataResponse.swift
//  CookUnityChallenge
//
//  Created by Axel Mosiejko on 17/11/2022.
//

import Foundation

struct MenuDataResponse : Decodable{
    var data : ResponseData
    
    private enum CodingKeys: String, CodingKey{
        case data = "data"
    }
}
