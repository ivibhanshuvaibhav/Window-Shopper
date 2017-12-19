//
//  CustomTextField.swift
//  Window Shopper
//
//  Created by Vibhanshu Vaibhav on 23/08/17.
//  Copyright © 2017 Vibhanshu Vaibhav. All rights reserved.
//

import UIKit

@IBDesignable
class CustomTextField: UITextField {

    override func draw(_ rect: CGRect) {
        let size : CGFloat = 20
        let currencyLabel = UILabel(frame: CGRect(x: 5, y: frame.size.height / 2 - size / 2 , width: size, height: size))
        currencyLabel.backgroundColor = UIColor.white.withAlphaComponent(0.8)
        currencyLabel.textAlignment = .center
        currencyLabel.textColor = UIColor.darkGray
        currencyLabel.layer.cornerRadius = 5.0
        currencyLabel.clipsToBounds = true
        let formatter = NumberFormatter()
        formatter.numberStyle = .currency
        formatter.locale = Locale(identifier: "en_IN")
        currencyLabel.text = formatter.currencySymbol
        addSubview(currencyLabel)
    }
    
    override func prepareForInterfaceBuilder() {
        customizeTextField()
    }
    
    override func awakeFromNib() {
        super.awakeFromNib()
        customizeTextField()
    }
    
    func customizeTextField() {
        backgroundColor = UIColor.white.withAlphaComponent(0.25)
        layer.cornerRadius = 5.0
        textColor = UIColor.white
        textAlignment = .center
        clipsToBounds = true
        
        //        if placeholder == nil {
        //            placeholder = " "
        //        }
        
        if let p = placeholder {
            attributedPlaceholder = NSAttributedString(string: p, attributes: [NSForegroundColorAttributeName : UIColor.white])
        }
    }

}
