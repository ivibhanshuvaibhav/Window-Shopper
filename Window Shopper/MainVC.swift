//
//  MainVC.swift
//  Window Shopper
//
//  Created by Vibhanshu Vaibhav on 23/08/17.
//  Copyright © 2017 Vibhanshu Vaibhav. All rights reserved.
//

import UIKit

class MainVC: UIViewController {

    @IBOutlet weak var wageTextField: CustomTextField!
    @IBOutlet weak var priceTextField: CustomTextField!
    
    @IBOutlet weak var resultLabel: UILabel!
    @IBOutlet weak var hoursLabel: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        let calculateButton = UIButton(frame: CGRect(x: 0, y: 0, width: view.frame.size.width, height: 60))
        calculateButton.backgroundColor = UIColor.orange
        calculateButton.setTitle("Calculate", for: .normal)
        calculateButton.setTitleColor(UIColor.white, for: .normal)
        calculateButton.addTarget(self, action: #selector(calculate), for: .touchUpInside)
        
        wageTextField.inputAccessoryView = calculateButton
        priceTextField.inputAccessoryView = calculateButton
        
        resultLabel.isHidden = true
        hoursLabel.isHidden = true
    }

    override func touchesBegan(_ touches: Set<UITouch>, with event: UIEvent?) {
        view.endEditing(true)
    }
    
    func calculate() {
        if let wage = wageTextField.text, let price = priceTextField.text {
            if let wage = Double(wage), let price = Double(price) {
                view.endEditing(true)
                resultLabel.isHidden = false
                hoursLabel.isHidden = false
                resultLabel.text = "\(Wage.getHours(wage: Double(wage), price: Double(price)))"
            }
        }
    }
    
    @IBAction func clearCalculator(_ sender: Any) {
        wageTextField.text = ""
        priceTextField.text = ""
        resultLabel.isHidden = true
        hoursLabel.isHidden = true
    }
}

