//
//  ApiRequestParameters.swift
//  CookUnityChallenge
//
//  Created by Axel Mosiejko on 17/11/2022.
//

import Foundation

typealias ApiParameters = [String: Any]

protocol ApiParametersProtocol {
    func queryParams() -> ApiParameters
}

struct ApiRequestParameters: ApiParametersProtocol {
    var parameters: ApiParametersProtocol

    func queryParams() -> ApiParameters {
        return parameters.queryParams()
    }
}

extension Dictionary: ApiParametersProtocol {
    func queryParams() -> ApiParameters {
        guard let dictionary = self as? ApiParameters else {
            return ApiParameters()
        }
        return dictionary
    }
}
