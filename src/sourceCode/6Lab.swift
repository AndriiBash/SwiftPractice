//-------------------------------------------------------------------------------------------
//
//  Project SwiftPractice
//  Copyright © 2023. All Rights Reserved.
//
//  OS:           macOS 13.4 (Ventura)
//  FILE:         6Lab.swift
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
    static let sizeArray: Int = 20
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

func getIndexAndValue(inputArray: [Int]) -> ([Int], [Int])
{
    let valueArray = inputArray.filter { $0 % 3 == 0}
    let indexValue = inputArray.enumerated().filter { $0.element % 3 == 0 }.map {$0.offset}

    return (valueArray, indexValue)
}

func main()
{
    let xArray = generateArray()
    let indexValueArray = getIndexAndValue(inputArray: xArray)

    print("We have such an array : \(xArray)")
    print("List of multiples of \(constValue.sizeArray) :\t\(indexValueArray.0)", terminator: "\t")
    print("\nIndices multiple of \(constValue.sizeArray) numbers : \(indexValueArray.1)", terminator: "\t")
    print("\n")
}

main()