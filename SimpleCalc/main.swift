//
//  main.swift
//  SimpleCalc
//
//  Created by iGuest on 3/30/17.
//  Copyright © 2017 iGuest. All rights reserved.
//

import Foundation

print("Hello, World!")

print("Enter an expression seperated by returns:")

while true {
    
    let response = UInt( readLine(strippingNewline: true)! )
    
    if response != nil {
        print("You just entered \(response!)")
    } else {
        print("You didn't enter a valid number. Try again.")
    }
}
