//-------------------------------------------------------------------------------------------
//
//  Project SwiftPractice
//  Copyright © 2023. All Rights Reserved.
//
//  OS:           macOS 13.4 (Ventura)
//  FILE:         7Lab.swift
//  AUTHOR:       Andrii Izbash
//
//  Project link: https://github.com/AndriyPetrovic/SwiftPractice
//-------------------------------------------------------------------------------------------

/*
    First task
    Write programs to solve the following
    two-dimensional array processing problems.
    Find the maximum multiples of the last 4 values
    of the elements of each column of the X(4,5)
    matrix. Write the result in array B.

    Second task
    ~~~~~~~~~~~~~~~~
    ~~~~~~~~~~~~~~~~
    ~~~~~~~~~~~~~~~~
    ~~~~~~~~~~~~~~~~
    ~~~~~~~~~~~~~~~~
*/

import Foundation

private enum constValue
{
    static let columns: Int = 4
    static let rows:    Int = 5
}

func generateMatrix() -> [[Int]]
{
    var matrix: [[Int]] = []

    for _ in 0..<constValue.rows
    {
        var row: [Int] = []

        for _ in 0..<constValue.columns
        {
            let randomwValue = Int.random(in: -20...20)
            row.append(randomwValue)
        }
        matrix.append(row)
    }

    return matrix
}

func printMatrix(inputMatrix: [[Int]])
{
    for row in inputMatrix
    {
        print(row)
    }
}

func searchLastElement(inputMatrix: [[Int]]) -> [Int]
{
    var elementArr  = [Int]()
    var buffer: Int = 0

    for j in 0..<constValue.columns
    {
        for i in 0..<constValue.rows
        {
            if inputMatrix[i][j] % 4 == 0
            {
                buffer = inputMatrix[i][j]
            }
        }
        elementArr.append(buffer)
        buffer = 0
    }

    return elementArr
}

func firstTask()
{
    let mainMatrix = generateMatrix()

    print("Matrix:\n")
    printMatrix(inputMatrix: mainMatrix)
    print("The last column values are multiples of 4 : \(searchLastElement(inputMatrix: mainMatrix))")
}

func secondTask()
{

}

func main()
{
    firstTask()
    //let xArray = generateArray()
    //let indexValueArray = getIndexAndValue(inputArray: xArray)

    //print("We have such an array : \(xArray)")
    //print("List of multiples of \(constValue.sizeArray) :\t\(indexValueArray.0)", terminator: "\t")
    //print("\nIndices multiple of \(constValue.sizeArray) numbers : \(indexValueArray.1)", terminator: "\t")
    //print("\n")
}

main()