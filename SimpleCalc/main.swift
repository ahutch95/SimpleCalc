//
//  main.swift
//  SimpleCalc
//
//  Created by iGuest on 3/30/17.
//  Copyright © 2017 iGuest. All rights reserved.
//

import Foundation

print("Enter an expression seperated by returns:")

var finished = false;

while finished != true {
    
    let response = Double( readLine(strippingNewline: true)! )
    let response2 = String( readLine(strippingNewline: true)! )
    let response3 = Double( readLine(strippingNewline: true)! )
    
    if response2 == "+"  {
        let result = response! + response3!
        print("Result: \(result)")
    } else if response2 == "-" {
        let result = response! - response3!
        print("Result: \(result)")
    } else if response2 == "*" {
        let result = response! * response3!
        print("Result: \(result)")
    } else if response2 == "/" {
        let result = response! / response3!
        print("Result: \(result)")
    } else if response2 == "%" {
        let result = response!.truncatingRemainder(dividingBy: response3!)
        print("Result: \(result)")
    } else {
        print("That is not a supported opperand. Please try again with these options (+, -, *, /, %, count, avg, fact)")
    }

}

/*
    if response != nil {
        print("You just entered \(response!)")
    } else {
        print("You didn't enter a valid number. Try again.")
    }*/
