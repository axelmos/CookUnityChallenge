//
//  MealTableViewCell.swift
//  CookUnityChallenge
//
//  Created by Axel Mosiejko on 17/11/2022.
//

import UIKit

class MealTableViewCell: UITableViewCell {

    @IBOutlet weak var titleLabel: UILabel?
    @IBOutlet weak var priceLabel: UILabel?
    @IBOutlet weak var checkImageView: UIImageView?
    
    func populate(_ meal: Meal) {
        titleLabel?.text = meal.name
        priceLabel?.text = "\(Constants.Strings.strMoney)\(meal.price)"
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)
        
        checkImageView?.image = UIImage(named: selected ? "icn_check_on" : "icn_check_off")
    }
}
