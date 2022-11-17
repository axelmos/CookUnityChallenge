//
//  MenuViewModel.swift
//  CookUnityChallenge
//
//  Created by Axel Mosiejko on 17/11/2022.
//

import Foundation

class MenuViewModel {
    var _categories: [Category]?
    var service: MenuService
    
    init(service: MenuService = MenuService()) {
        self.service = service
    }
}

extension MenuViewModel: MenuProtocol {
    var categories: [Category] {
        return _categories ?? []
    }
    
    func getMenu(completion: @escaping () -> (), failure: @escaping (String) -> ()) {
        service.getMenu() { [weak self] data in
            self?._categories = data
            completion()
        } failure: { error in
            failure(error)
        }
    }
    
}
