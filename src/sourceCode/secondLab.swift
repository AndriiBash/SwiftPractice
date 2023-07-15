//-------------------------------------------------------------------------------------------
//
//  Project SwiftPractice
//  Copyright © 2023. All Rights Reserved.
//
//  OS:           macOS 13.4 (Ventura)
//  FILE:         secondLab.swift
//  AUTHOR:       Andrii Izbash
//
//  Project link: https://github.com/AndriyPetrovic/SwiftPractice
//-------------------------------------------------------------------------------------------

/*
    First task
    Let D be the shaded part of the plane (Fig. 2) 
    and let Z be determined by x and y as follows (the entry (x, y)
    D means that the point with coordinates x, y belongs to the area D):
    Z = {f1(x,y) else x,y e D
         f2(x,y) else x,y not e D}
*/

import Foundation

func printError()
{
    print("\u{001B}[0;31merror! \u{001B}[0m")
}

func roundToThousandths(number: Double) -> Double
{
    return round(number * 1000) / 1000.0
}

func main()
{
    var x: Double = 0.0
    var y: Double = 0.0
    var z: Double = 0.0
    let circleRadius: Double = 1.0

    print("Enter the x : ", terminator: "")

    if let inputX = readLine()
    {
        print("Enter the y : ", terminator: "")

        if let inputY = readLine()
        {
            if let numberX = Double(inputX),
               let numberY = Double(inputY)
            {
                x = numberX
                y = numberY

                let hypotenuse: Double = sqrt(pow(x,2) + pow(y,2))

                if hypotenuse < circleRadius
                {
                    z = roundToThousandths(number: (pow(x,y+1) + exp(y-1)))

                    print("The point \u{001B}[0;32mbelongs\u{001B}[0m to the circle")
                    print("Z : \(z)")
                }
                else
                {
                    z = roundToThousandths(number: (pow(abs(y-x),3) + atan(x)))

                    print("The point does \u{001B}[0;31mnot\u{001B}[0m belong to the circle")
                    print("Z : \(z)")
                }
            }
            else
            {
                print("\u{001B}[0;31merror: \u{001B}[0m Write only numbers.")
            }
        }
    }
    else
    {
        printError()
    }
}

main()