//
//  ApiParameterEncoding.swift
//  CookUnityChallenge
//
//  Created by Axel Mosiejko on 17/11/2022.
//

import Foundation

enum ParamsEncoding {
    case json
}

struct ApiParameterEncoding {
    let parameterEncoding: ParamsEncoding
    
    init(parameterEncoding: ParamsEncoding) {
        self.parameterEncoding = parameterEncoding
    }
    
    func encodingType() -> String {
        return Constants.Services.encodingType
    }
}
