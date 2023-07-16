//-------------------------------------------------------------------------------------------
//
//  Project SwiftPractice
//  Copyright © 2023. All Rights Reserved.
//
//  OS:           macOS 13.4 (Ventura)
//  FILE:         5Lab.swift
//  AUTHOR:       Andrii Izbash
//
//  Project link: https://github.com/AndriyPetrovic/SwiftPractice
//-------------------------------------------------------------------------------------------

/*
    First task
    Find the number of elements in the array B(15),
    the number of values of which lie in the interval [-8,16]
*/

import Foundation

private enum constValue
{
    static let range = -8...16
    static let sizeArray: Int = 15
}

func generateArray() -> [Int]
{
    var arr = [Int]()

    for _ in 1...constValue.sizeArray
    {
        arr.append(Int.random(in: -50...50))
    }

    return arr
}

func printArray(inputArray: [Int])
{
    print("We have such an array[\(constValue.sizeArray)] : ", terminator: "")

    for i in 0...constValue.sizeArray - 1
    {
        print("\(inputArray[i])", terminator: " ")
    }
}

func getCountValue(inputArray: [Int]) -> Int
{
    var countValue: Int = 0
    var i: Int = 0

    while i < constValue.sizeArray - 1
    {
        if constValue.range ~= inputArray[i]
        {
            countValue += 1
        }
        i += 1
    }

    return countValue
}

func main()
{
    let myArray = generateArray()
    printArray(inputArray: myArray)

    print("\nCount of numbers between \(constValue.range.lowerBound)" +
        " and \(constValue.range.upperBound) : \(getCountValue(inputArray: myArray))")
}

main()