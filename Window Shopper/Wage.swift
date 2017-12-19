//
//  Wage.swift
//  Window Shopper
//
//  Created by Vibhanshu Vaibhav on 24/08/17.
//  Copyright © 2017 Vibhanshu Vaibhav. All rights reserved.
//

import Foundation

class Wage {
    class func getHours(wage: Double, price: Double) -> Int {
        return Int(ceil(price / wage))
    }
}

