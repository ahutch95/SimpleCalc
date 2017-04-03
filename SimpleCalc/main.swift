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
    
    let response = String( readLine(strippingNewline: true)! )
    
    if response!.contains("count"){
        var intList = response?.components(separatedBy: " ")
        print("Result: \(intList!.count - 1)")
        
    } else if response!.contains("avg") {
        var intList = response?.components(separatedBy: " ")
        var junk = intList!.popLast()
        var sum = 0;
        for i in 0...intList!.count - 1{
            sum += Int(intList![i])!
        }
        print("Result: \(Double(sum) / Double(intList!.count))")
        
    } else if response!.contains("fact") {
        var intList = response?.components(separatedBy: " ")
        var factorial = 1;
        for i in 1...Int(intList![0])!{
            factorial *= i
        }
        print("Result: \(factorial)")
        
    } else {
        let response2 = String( readLine(strippingNewline: true)! )
        let response3 = Double( readLine(strippingNewline: true)! )
        
        if response2 == "+"  {
            let result = Double(response!)! + response3!
            print("Result: \(result)")
        } else if response2 == "-" {
            let result = Double(response!)! - response3!
            print("Result: \(result)")
        } else if response2 == "*" {
            let result = Double(response!)! * response3!
            print("Result: \(result)")
        } else if response2 == "/" {
            let result = Double(response!)! / response3!
            print("Result: \(result)")
        } else if response2 == "%" {
            let result = Double(response!)!.truncatingRemainder(dividingBy: response3!)
            print("Result: \(result)")
        } else {
            print("That is not a supported operand. Please try again with these options (+, -, *, /, %, count, avg, fact)")
        }
    }

}

/*
    if response != nil {
        print("You just entered \(response!)")
    } else {
        print("You didn't enter a valid number. Try again.")
    }*/
