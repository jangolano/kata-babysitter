//
//  Calculator.swift
//  babysitter-kata
//
//  Created by Josh Angolano on 2019-02-09.
//  Copyright © 2019 jangolano. All rights reserved.
//

import Foundation

class Calculator{
    init() {

    }
    func calculatFamilyABefore11()->Int{
        return 15;
    }

    func calculatFamilyAAfter11()->Int{
        return 20;
    }

    func calculatFamilyBefore10()->Int{
        return 12;
    }

    func calculatFamilyBBetween10and12()->Int{
        return 8;
    }

    func calculateFamilyBAfter12()->Int{
        return 16;
    }

    func calculateFamilyCBefore9()->Int{
        return 21;
    }

    func calculateFamilyCAfter9()->Int{
        return 15;
    }

    func calculateEndingHours(startTime:Int, endTime:Int)->Array<Int>{
        return Array()
    }

}
