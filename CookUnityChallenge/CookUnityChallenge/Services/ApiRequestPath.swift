//
//  ApiRequestPath.swift
//  CookUnityChallenge
//
//  Created by Axel Mosiejko on 17/11/2022.
//

import Foundation

enum Enviroment {
   case dev
   case prod
}
 
var enviroment: Enviroment = .prod

enum ApiRequestPath {
    case home
    case detail
    
    var subPath: String {
        switch self {
        case .home: return Constants.Services.home
        case .detail: return ""
        }
    }
    
    var basePath: String {
        if enviroment == .dev { return Constants.Services.baseURL }
        
        switch self {
        case .home: return Constants.Services.baseURL
        case .detail: return ""
        }
    }
}
