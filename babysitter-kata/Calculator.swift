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
        var results = Array<Int>();
        var completeTime = endTime;
        if(endTime<startTime){
            completeTime+=12;
        }
        for time in startTime+1...completeTime{
            if(time>12){
                results.append(time-12)
            }
            else{
                results.append(time)
            }
        }
        return results;
    }

    func calculatePay(family:Character, startTime:Int, endTime:Int)->Int{
        var totalPay=0;
        let endingHours = calculateEndingHours(startTime: startTime, endTime: endTime)
        for hour in endingHours{
            if(family=="A"){
                if(hour<=11){
                    totalPay+=calculatFamilyABefore11();
                }else{
                    totalPay+=calculatFamilyAAfter11();
                }
            }
        }
        return totalPay;
    }
    
    
}
