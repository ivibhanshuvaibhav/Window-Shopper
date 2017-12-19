//
//  Window_Shopper_Tests.swift
//  Window Shopper Tests
//
//  Created by Vibhanshu Vaibhav on 24/08/17.
//  Copyright © 2017 Vibhanshu Vaibhav. All rights reserved.
//

import XCTest

class Window_Shopper_Tests: XCTestCase {
    
    override func setUp() {
        super.setUp()
        // Put setup code here. This method is called before the invocation of each test method in the class.
    }
    
    override func tearDown() {
        // Put teardown code here. This method is called after the invocation of each test method in the class.
        super.tearDown()
    }
    
    func testExample() {
        // This is an example of a functional test case.
        // Use XCTAssert and related functions to verify your tests produce the correct results.
    }
    
    func testForHours() {
        XCTAssert(Wage.getHours(wage: 25, price: 100) == 4)
        XCTAssert(Wage.getHours(wage: 40, price: 399) == 10)
        XCTAssert(Wage.getHours(wage: 12, price: 425) == 36)
    }
    
    func testPerformanceExample() {
        // This is an example of a performance test case.
        self.measure {
            // Put the code you want to measure the time of here.
        }
    }
    
}
