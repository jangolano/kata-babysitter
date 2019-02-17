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
        rates.append(Rate(family: "A", endingTime: 4, rate: 20))
        rates.append(Rate(family: "B", endingTime: 10, rate: 12))
        rates.append(Rate(family: "B", endingTime: 12, rate: 8))
        rates.append(Rate(family: "B", endingTime: 4, rate: 16))
        rates.append(Rate(family: "C", endingTime: 9, rate: 21))
        rates.append(Rate(family: "C", endingTime: 4, rate: 15))
    }
    
    func calculatFamilyABefore11()->Int{
        return calculateHourlyRate(family: "A", endingTime: 11)
    }

    func calculatFamilyAAfter11()->Int{
        return calculateHourlyRate(family: "A", endingTime: 4)
    }

    func calculatFamilyBefore10()->Int{
        return calculateHourlyRate(family: "B", endingTime: 10)
    }

    func calculatFamilyBBetween10and12()->Int{
        return calculateHourlyRate(family: "B", endingTime: 12)
    }

    func calculateFamilyBAfter12()->Int{
        return calculateHourlyRate(family: "B", endingTime: 4)
    }

    func calculateFamilyCBefore9()->Int{
        return calculateHourlyRate(family: "C", endingTime: 9)
    }

    func calculateFamilyCAfter9()->Int{
        return calculateHourlyRate(family: "C", endingTime: 4)
    }

    func calculateHourlyRate(family:Character, endingTime:Int)->Int{
        for Rate in rates{
            if(Rate.family==family){
                if(Rate.endingTime==endingTime){
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
            if(family=="A"){
                if(hour<=11){
                    totalPay+=calculatFamilyABefore11();
                }else{
                    totalPay+=calculatFamilyAAfter11();
                }
            }else if(family=="B"){
                if(hour<=10){
                    totalPay+=calculatFamilyBefore10();
                }else if(hour<=12){
                    totalPay+=calculatFamilyBBetween10and12()
                }else{
                    totalPay+=calculateFamilyBAfter12()
                }
            }else if(family=="C"){
                if(hour<=9){
                    totalPay+=calculateFamilyCBefore9()
                }else{
                    totalPay+=calculateFamilyCAfter9()
                }
            }
        }
        return totalPay;
    }
    
    
}
