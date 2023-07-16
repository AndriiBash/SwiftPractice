//-------------------------------------------------------------------------------------------
//
//  Project SwiftPractice
//  Copyright © 2023. All Rights Reserved.
//
//  OS:           macOS 13.4 (Ventura)
//  FILE:         3Lab.swift
//  AUTHOR:       Andrii Izbash
//
//  Project link: https://github.com/AndriyPetrovic/SwiftPractice
//-------------------------------------------------------------------------------------------

/*
    First task
    Calculate the table of values of the function 
    using loop operators with precondition, postcondition
    and parameter (3 types). for the values of the argument
    x in the interval from Xn to Xk with a step of X. 
    The input data are shown in Table 3.
*/

import Foundation

enum constValue
{
    static let a:  Double = 2.1
    static let xh: Double = 0.8
    static let xk: Double = 3.6
    static let x:  Double = 0.2
    static let pi: Double = 3.14
}

func roundToThousandths(number: Double) -> Double
{
    return round(number * 1000) / 1000.0
}

func main()
{
    var x: Double = 0.0

    print("Enter the x : ", terminator: "")

    if let inputX = readLine()
    {
        if let numberX = Double(inputX)
        {
            x = numberX
            
            print("Values: ", terminator: "")

            if x <= constValue.a
            {
                for index in stride(from: constValue.xh, to: constValue.xk, by: constValue.x)
                {
                    print("\(roundToThousandths(number: (index * sin(sqrt(x) + constValue.pi + pow(constValue.a,2)))))",                                                                                     terminator: " ")
                }
            }
            else
            {
                for index in stride(from: constValue.xh, to: constValue.xk, by: constValue.x)
                {
                    print("\(roundToThousandths(number: (constValue.a * pow(x,2) + exp(index))))",                                                                                     terminator: " ")
                }
            }
        }
        else
        {
            print("\u{001B}[0;31merror: \u{001B}[0m Write only numbers.")
        }
    }
    else
    {
        print("\u{001B}[0;31merror! \u{001B}[0m")
    }
}

main()