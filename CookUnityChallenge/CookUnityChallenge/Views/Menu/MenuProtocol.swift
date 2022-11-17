//
//  MenuProtocol.swift
//  CookUnityChallenge
//
//  Created by Axel Mosiejko on 17/11/2022.
//

import Foundation

protocol MenuProtocol {
    var categories: [Category] { get }
    
    func getMenu(completion: @escaping () -> (), failure: @escaping (String) -> ())
}
