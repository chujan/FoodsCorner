//
//  DishDetailViewController.swift
//  FoodsCorner
//
//  Created by Chukwuemeka Jennifer on 20/12/2021.
//

import UIKit
import ProgressHUD

class DishDetailViewController: UIViewController {

    @IBOutlet weak var DishImageView: UIImageView!
    @IBOutlet weak var titleLabel: UILabel!
    @IBOutlet weak var caloriesLabel: UILabel!
    @IBOutlet weak var descriptionLabel: UILabel!
    @IBOutlet weak var nameField: UITextField!
    
    var dish: Dish!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        populateView()

        // Do any additional setup after loading the view.
    }
    private func populateView() {
        DishImageView.kf.setImage(with: dish.image?.asUrl)
        titleLabel.text = dish.name
        descriptionLabel.text = dish.description
        caloriesLabel.text = dish.formattedCalories
    }
    
    @IBAction func placeOrderButtonClicked(_ sender: UIButton) {
        guard let name = nameField.text?.trimmingCharacters(in: .whitespaces),
              !name.isEmpty else {
                  ProgressHUD.showError("Please enter your name")
                  return
              }
        ProgressHUD.show("Placing Order...")
        NetworkService.shared.placeOrder(dishId: dish.id ?? "", name: name) { (result) in
            switch result {
                
            case .success(_):
                ProgressHUD.showSuccess("Your order has been received")
            case .failure(let error):
                ProgressHUD.showError(error.localizedDescription)
            }
            
        }
    }
    
  
}
