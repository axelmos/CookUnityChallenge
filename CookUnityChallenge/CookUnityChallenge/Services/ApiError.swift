//
//  ApiError.swift
//  CookUnityChallenge
//
//  Created by Axel Mosiejko on 17/11/2022.
//

import Foundation

struct ApiError: Error {
    var message:String
    var statusCode:String
    var details: [String]

}

extension ApiError: Decodable {
    private enum CodingKeys: String, CodingKey {
        case message = "message"
        case statusCode = "code"
        case details = "details"
    }
}
