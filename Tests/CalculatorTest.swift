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

}
