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
}
