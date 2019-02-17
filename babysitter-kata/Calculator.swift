//
//  Calculator.swift
//  babysitter-kata
//
//  Created by Josh Angolano on 2019-02-09.
//  Copyright © 2019 jangolano. All rights reserved.
//

import Foundation

class Calculator{
    struct Rate {
        var family:Character = " "
        var endingTime:Int = 0
        var rate:Int = 0
    }
    var rates: Array<Rate>;

    init(){
        rates = Array<Rate>();
        rates.append(Rate(family: "A", endingTime: 11, rate: 15))
        rates.append(Rate(family: "A", endingTime: 16, rate: 20))
        rates.append(Rate(family: "B", endingTime: 10, rate: 12))
        rates.append(Rate(family: "B", endingTime: 12, rate: 8))
        rates.append(Rate(family: "B", endingTime: 16, rate: 16))
        rates.append(Rate(family: "C", endingTime: 9, rate: 21))
        rates.append(Rate(family: "C", endingTime: 16, rate: 15))
    }
    
    func calculateHourlyRate(family:Character, endingTime:Int)->Int{
        for Rate in rates{
            if(Rate.family==family){
                if(Rate.endingTime>=endingTime){
                    return Rate.rate;
                }
            }
        }
        return 0;
    }
    
    func calculateEndingHours(startTime:Int, endTime:Int)->Array<Int>{
        var results = Array<Int>();
        var completeTime = endTime;
        if(endTime<startTime){
            completeTime+=12;
        }
        for time in startTime+1...completeTime{
            results.append(time)
        }
        return results;
    }
    
    func calculatePay(family:Character, startTime:Int, endTime:Int)->Int{
        var totalPay=0;
        let endingHours = calculateEndingHours(startTime: startTime, endTime: endTime)
        for hour in endingHours{
            totalPay+=calculateHourlyRate(family: family, endingTime: hour)
        }
        return totalPay;
    }
}
