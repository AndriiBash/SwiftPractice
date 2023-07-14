//-------------------------------------------------------------------------------------------
//
//  Project SwiftPractice
//  Copyright © 2023. All Rights Reserved.
//
//  OS:           macOS 13.4 (Ventura)
//  FILE:         firstLab.swift
//  AUTHOR:       Andrii Izbash
//
//  Project link: https://github.com/AndriyPetrovic/SwiftPractice
//-------------------------------------------------------------------------------------------

import Foundation

// First task 
func firstTask()
{
    /*
        The length of the edge of the cube is given. 
        Find the face area, total surface area, 
        and volume of this cube
    */

    var lengthEdge: Double = 0

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
        print("error!")
    }
}

func main()
{
    firstTask()
}

main()