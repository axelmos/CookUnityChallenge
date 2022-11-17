//
//  ApiRequest.swift
//  CookUnityChallenge
//
//  Created by Axel Mosiejko on 17/11/2022.
//

import Foundation

enum HTTPMethods: String {
    case get, post, put, delete
}

struct ApiRequest {
    let path:ApiRequestPath
    let method: HTTPMethods
    let parameters: ApiRequestParameters?
    let encoding: ApiParameterEncoding
    
    init(path:ApiRequestPath, method: HTTPMethods, parameters: ApiRequestParameters? = nil, encoding: ApiParameterEncoding = ApiParameterEncoding(parameterEncoding: .json)) {
        self.path = path
        self.method = method
        self.parameters = parameters
        self.encoding = encoding
    }
}
