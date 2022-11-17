//
//  MenuViewController.swift
//  CookUnityChallenge
//
//  Created by Axel Mosiejko on 17/11/2022.
//

import UIKit

class MenuViewController: UIViewController {

    @IBOutlet weak var tableView: UITableView!
    @IBOutlet weak var continueButton: UIButton!
    
    lazy var menuViewModel:MenuProtocol = {
         return MenuViewModel()
    }()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        // Cells
        let cellNib = UINib(nibName: "MealTableViewCell", bundle: nil)
        tableView.register(cellNib, forCellReuseIdentifier: "MealTableViewCell")
        
        // Layout
        continueButton.layer.cornerRadius = Constants.Layout.cornerRadius
        continueButton.setTitle(CartController.shared.getContinueButtonTitle(), for: .normal)
        tableView.allowsMultipleSelection = true
        
        // API Call
        getMenu()
    }

    // MARK:- Class methods
    
    private func getMenu () {
        menuViewModel.getMenu {
            DispatchQueue.main.async {
                self.tableView.reloadData()
            }
        } failure: { error in
            print(error)
        }
    }
    
    @IBAction func continueAction(sender: UIButton) {
        let ac = UIAlertController(title: Constants.Strings.strAlertTitle, message: Constants.Strings.strAlertSubMessage, preferredStyle: .alert)
        ac.addAction(UIAlertAction(title: Constants.Strings.strOk, style: .default))
        present(ac, animated: true, completion: nil)
    }
}

extension MenuViewController: UITableViewDelegate, UITableViewDataSource {
    // MARK: - UITableViewDataSource
    
    func numberOfSections(in tableView: UITableView) -> Int {
        return menuViewModel.categories.count
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return menuViewModel.categories[section].meals.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        if let cell = tableView.dequeueReusableCell(withIdentifier: "MealTableViewCell", for: indexPath) as? MealTableViewCell {
            cell.populate(menuViewModel.categories[indexPath.section].meals[indexPath.row])
            
            return cell
        }
        
        return UITableViewCell()
    }
    
    func tableView(_ tableView: UITableView, titleForHeaderInSection section: Int) -> String? {
        return menuViewModel.categories[section].title
    }
    
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return UITableView.automaticDimension
    }
    
    // MARK: - UITableViewDelegate
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        if let cell = tableView.cellForRow(at: indexPath) {
            cell.setSelected(true, animated: true)
            CartController.shared.addItem(menuViewModel.categories[indexPath.section].meals[indexPath.row])
            continueButton.setTitle(CartController.shared.getContinueButtonTitle(), for: .normal)
            continueButton.isEnabled = CartController.shared.enableContinueButton()
        }
    }
    
    func tableView(_ tableView: UITableView, didDeselectRowAt indexPath: IndexPath) {
        if let cell = tableView.cellForRow(at: indexPath) {
            cell.setSelected(false, animated: true)
            CartController.shared.removeItem(menuViewModel.categories[indexPath.section].meals[indexPath.row])
            continueButton.setTitle(CartController.shared.getContinueButtonTitle(), for: .normal)
            continueButton.isEnabled = CartController.shared.enableContinueButton()
        }
    }
}
