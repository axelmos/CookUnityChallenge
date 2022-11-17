//
//  MenuService.swift
//  CookUnityChallenge
//
//  Created by Axel Mosiejko on 17/11/2022.
//

import Foundation

final class MenuService : ApiService {
    
    func getMenu(completion: @escaping ([Category]) -> Void, failure: @escaping (String) -> Void) {
        
        if let url = Bundle.main.url(forResource: "menu", withExtension: "json") {
            do {
                let data = try Data(contentsOf: url)
                let decoder = JSONDecoder()
                let jsonData = try decoder.decode(MenuDataResponse.self, from: data)
                completion(jsonData.data.categories)
            } catch {
                failure("Error loading menu.json")
            }
        }
    }
}
