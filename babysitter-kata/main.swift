//
//  main.swift
//  babysitter-kata
//
//  Created by Josh Angolano on 2/12/19.
//  Copyright © 2019 jangolano. All rights reserved.
//

import Foundation
var family: String? = String("")
var validStartTime:Bool = false
var validEndTime:Bool = false
var calc = Calculator();
var startHour = 0;
var endHour = 0;


while ((family!) != "A") && ((family!) != "B") && ((family!) != "C"){
    print ("Enter the family you are babysitting for (A, B, C)")
    family = readLine()
}

while(!validStartTime){
    print("Enter Start Time No Earlier than 5:00 PM (24 Hour Format)")
    let inStr = readLine()!
    let inFormatter = DateFormatter()
    inFormatter.locale = Locale(identifier: "en_US_POSIX")
    inFormatter.dateFormat = "HH:mm"
    let date = inFormatter.date(from:inStr)!
    startHour = Calendar.current.component(.hour, from:date)
    if(startHour >= 17){
        validStartTime=true;
    }
    if(startHour>12){
        startHour -= 12;
    }
}

endHour = startHour
while(startHour == endHour){
    print("Enter the End TimeB(24 Hour Format")
    let inStr = readLine()!
    let inFormatter = DateFormatter()
    inFormatter.locale = Locale(identifier: "en_US_POSIX")
    inFormatter.dateFormat = "HH:mm"
    let date = inFormatter.date(from:inStr)!
    endHour = Calendar.current.component(.hour, from:date)
}

var fam = Character(family!)
var rate = calc.calculatePay(family: fam, startTime: startHour, endTime: endHour)
print("You will make $"+String(rate))

