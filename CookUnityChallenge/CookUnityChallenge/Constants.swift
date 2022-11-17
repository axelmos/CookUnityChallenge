//
//  Constants.swift
//  CookUnityChallenge
//
//  Created by Axel Mosiejko on 17/11/2022.
//

import Foundation

struct Constants {
    
    struct Services {
        static let baseURL = ""
        static let menuURL = "menu.json"
        static let home = "test"
        static let detail = "detail"
        static let encodingType = "application/json"
        static let contentType = "application/json;charset=utf-8"
    }
    
    struct Layout {
        static let cornerRadius = 10.0
    }
    
    struct Menu {
        static let minimumItems = 6
    }
    
    struct Strings {
        static let strMoney = "$"
        static let strContinue = "Continue"
        static let strAddMoreMeals = "Add %d more meals to continue"
        static let strAlertTitle = "Checkout"
        static let strAlertSubMessage = "Go to Cart"
        static let strOk = "OK"
    }
}
