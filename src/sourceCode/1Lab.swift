//-------------------------------------------------------------------------------------------
//
//  Project SwiftPractice
//  Copyright © 2023. All Rights Reserved.
//
//  OS:           macOS 13.4 (Ventura)
//  FILE:         1Lab.swift
//  AUTHOR:       Andrii Izbash
//
//  Project link: https://github.com/AndriyPetrovic/SwiftPractice
//-------------------------------------------------------------------------------------------

/*
    First task
    The length of the edge of the cube is given. 
    Find the face area, total surface area, 
    and volume of this cube
*/

import Foundation

func firstTask()
{
    var lengthEdge: Double = 0.0

    print("Enter the length of the edge of the cube : ", terminator: "")

    if let input = readLine()
    {
        if let number = Double(input)
        {
            lengthEdge = Double(number)

            let cubeEdgeLength: Double = round(pow(lengthEdge, 3) * 1000) / 1000.0
            let cubeTotalSufaceArea: Double = round(6 * pow(lengthEdge, 2) * 1000) / 1000.0
            let cubeVoulme: Double = round(12*lengthEdge * 1000) / 1000.0

            print("""
            \u{001B}[0;32msuccessfully:\u{001B}[0m
            Face area of a cube :\t\(cubeEdgeLength)
            Cube surface area :\t\(cubeTotalSufaceArea)
            Cube volume :\t\t\(cubeVoulme)
            """)
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


/*
    Second task
    Write a program that calculates the value of a function.
    Variable values are entered by the user.
*/

func secondTask()
{
    var a: Double = 0.0
    var b: Double = 0.0
    var c: Double = 0.0

    print("\nEnter the a,b,c : ")

    if let inputA = readLine(), let inputB = readLine(), let inputC = readLine()
    {
        if let numberA = Double(inputA), let numberB = Double(inputB), let numberC = Double(inputC)
        {
            a = Double(numberA)
            b = Double(numberB)
            c = Double(numberC)

            var result: Double = round(tan(c) + sqrt(b/c + a) * 1000) / 1000.0

            print("Answer function(tan(c) - sqrt(b/c + a)) : \(result)")
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

func main()
{
    firstTask()
    secondTask()
}

main()