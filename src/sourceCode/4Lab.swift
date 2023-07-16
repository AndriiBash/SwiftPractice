//-------------------------------------------------------------------------------------------
//
//  Project SwiftPractice
//  Copyright © 2023. All Rights Reserved.
//
//  OS:           macOS 13.4 (Ventura)
//  FILE:         4Lab.swift
//  AUTHOR:       Andrii Izbash
//
//  Project link: https://github.com/AndriyPetrovic/SwiftPractice
//-------------------------------------------------------------------------------------------

/*
    First task
    Use switch operator, store the program
    for solving the next problem. Option mn.
    Calculate the function value table for integers,
    the value of the argument x is in the interval [Хн,Хк].
    Multiplies X1, X2, X3, X4 and functions f1, f2, f3, f4
    are given in tables 4 and 5.
*/

import Foundation

private enum constValue
{
    static let xn: Int = -10
    static let xk: Int = 15
}

func roundToThousandths(number: Double) -> Double
{
    return round(number * 1000) / 1000.0
} 

func getInteger() -> (Int, Bool)
{
    print("Enter the x : ", terminator: "")

    if let inputX = readLine()
    {
        if let numberX = Int(inputX)
        {
            return (numberX, true)          
        }
        else
        {
            print("\u{001B}[0;31merror: \u{001B}[0mWrite only integer numbers.")
        }
    }
    else
    {
        print("\u{001B}[0;31merror! \u{001B}[0m")
    }
    return (0, false)
}

func main()
{
    let x = getInteger()

    if x.1 == true, x.0 > constValue.xn, x.0 < constValue.xk
    {
        switch x.0
        {
        case 7, 9, 11:
            print("You value: \(roundToThousandths(number: exp(Double(2 * x.0 - 15)) ))")
        case 6, 8, 10, 12:
            print("You value: \(roundToThousandths(number: sqrt(5 * pow(Double(x.0), 2.0) + 1)) )")
        case -2, -1, 0, 1, 2, 3, 4, 5:
            print("You value: \(roundToThousandths(number: abs(Double(x.0) + 1.5) ))")
        default:
            print("You value: \(roundToThousandths(number: pow(sin(pow(Double(x.0), 2)), 3) ))")
        }

    }
    else if x.1 == true
    {
        print("X must be between xn[\(constValue.xn)] and xk[\(constValue.xk)]")
    }
}

main()