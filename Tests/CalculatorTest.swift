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
    func testFamilyABefore11(){
        XCTAssertEqual(calc.calculatFamilyABefore11(), 15)
    }

    func testFamilyAAfter11(){
        XCTAssertEqual(calc.calculatFamilyAAfter11(), 20)
    }

    func testFamilyBBefore10(){
        XCTAssertEqual(calc.calculatFamilyBefore10(), 12)
    }

    func testFamilyBBetween10and12(){
        XCTAssertEqual(calc.calculatFamilyBBetween10and12(), 8);
    }

    func testFamilyBAfter12(){
        XCTAssertEqual(calc.calculateFamilyBAfter12(), 16)
    }

    func testFamilyCBefore9(){
        XCTAssertEqual(calc.calculateFamilyCBefore9(), 21)
    }

    func testFamilyCAfter9(){
        XCTAssertEqual(calc.calculateFamilyCAfter9(), 15)
    }

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
        XCTAssertEqual(endingHours[2], 1)
        XCTAssertEqual(endingHours[3], 2)
        XCTAssertEqual(endingHours[4], 3) 
    }
    func testCaculatePay(){
        XCTAssertEqual(calc.calculatePay(family:"A", startTime: 5, endTime: 12), 110)
    }
    
    func testCalculatePayFamilyB(){
        XCTAssertEqual(calc.calculatePay(family: "B", startTime: 6, endTime: 3), 80)
    }

}
