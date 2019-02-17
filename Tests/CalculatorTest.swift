//
//  CalculatorTest.swift
//  Tests
//
//  Created by Josh Angolano on 2019-02-09.
//  Copyright © 2019 jangolano. All rights reserved.
//

import XCTest

class CalculatorTests: XCTestCase {
    let calc = Calculator();

    func testCalculateEndingHours(){
        let endingHours = calc.calculateEndingHours(startTime: 5, endTime: 8)
        XCTAssertEqual(endingHours.count, 3)
        XCTAssertEqual(endingHours[0], 6)
        XCTAssertEqual(endingHours[1], 7)
        XCTAssertEqual(endingHours[2], 8)
    }
    
    func testCalculateEndingHourAm(){
        let endingHours = calc.calculateEndingHours(startTime: 10, endTime: 3)
        XCTAssertEqual(endingHours.count, 5)
        XCTAssertEqual(endingHours[0], 11)
        XCTAssertEqual(endingHours[1], 12)
        XCTAssertEqual(endingHours[2], 13)
        XCTAssertEqual(endingHours[3], 14)
        XCTAssertEqual(endingHours[4], 15) 
    }
    func testCaculatePay(){
        XCTAssertEqual(calc.calculatePay(family:"A", startTime: 5, endTime: 12), 110)
    }
    
    func testCalculatePayFamilyB(){
        XCTAssertEqual(calc.calculatePay(family: "B", startTime: 6, endTime: 3), 112)
    }
    
    func testCalcuatePayFamilyC(){
        XCTAssertEqual(calc.calculatePay(family: "C", startTime: 7, endTime: 2), 117)
    }

}
