//
//  CartController.swift
//  CookUnityChallenge
//
//  Created by Axel Mosiejko on 17/11/2022.
//

import Foundation

class CartController {
    static let shared = CartController()
    var cartItems:[Meal] = [Meal]()
    
    func addItem(_ meal: Meal) {
        cartItems.append(meal)
    }
    
    func removeItem(_ meal: Meal) {
        if let item = cartItems.firstIndex(of: meal) {
            cartItems.remove(at: item)
        }
    }
    
    func getContinueButtonTitle() -> String {
        var buttonTitle = ""
        
        if cartItems.count == Constants.Menu.minimumItems {
            buttonTitle = Constants.Strings.strContinue
        } else if cartItems.count > Constants.Menu.minimumItems {
            let totalStr = String(format: "(+%@%.2f)",Constants.Strings.strMoney, getTotalExtraItems())
            buttonTitle = "\(Constants.Strings.strContinue) \(totalStr)"
        } else {
            buttonTitle = String(format: Constants.Strings.strAddMoreMeals, Constants.Menu.minimumItems - cartItems.count)
        }
        
        return buttonTitle
    }
    
    func enableContinueButton() -> Bool {
        return cartItems.count >= Constants.Menu.minimumItems
    }
    
    private func getTotalExtraItems() -> Float {
        /* The total calculation of the extra items it is always made with the
           sum of the last items in the array. So if you remove another item
         that are not one of the extra items, it will recalculate the amount.
         */
        
        var total:Float = 0.00
        if cartItems.count > Constants.Menu.minimumItems {
            let extraItems = cartItems.suffix(from: Constants.Menu.minimumItems)
            for item in extraItems {
                total = total + item.price
            }
        }
        
        return total
    }
}
