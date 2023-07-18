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
    Find the difference between the Minimum positive
    elements of the main diagonal and the Arithmetic
    Average of the odd elements of the row of the X(6,6)
    matrix.
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

func getMinElementDiogMatrix(inputMatrix: [[Int]]) -> Int
{
    var element: Int = 999
    //  △
    //  |
    //  |
    //  |______  in var element also we can
    //           use Int.max, but this will have a bad
    //           effect on performance, or use the search
    //           for the maximum element of the matrix

    for i in 0..<min(inputMatrix.count, inputMatrix[0].count)
    {
        if inputMatrix[i][i] > 0 && inputMatrix[i][i] < element
        {
            element = inputMatrix[i][i]
        }
    }

    return element == 999 ? 0 : element
}

func getAvgNum(inputArr: [Int]) -> Double?
{
    guard !inputArr.isEmpty else
    {
        return nil
    }
    
    let sum = inputArr.reduce(0, +)
    let average = Double(sum) / Double(inputArr.count)
    
    return average
}

func firstTask()
{
    let mainMatrix = generateMatrix()

    print("\u{001B}[0;36m[First task]\u{001B}[0m\nMatrix:")
    printMatrix(inputMatrix: mainMatrix)
    print("The last column values are multiples of 4 : \(searchLastElement(inputMatrix: mainMatrix))")

}

func secondTask()
{
    let mainMatrix = generateMatrix()

    print("\u{001B}[0;36m\n[Second task]\u{001B}[0m\nMatrix:")
    printMatrix(inputMatrix: mainMatrix)

    print("Minimum positive element of the main diagonal : \(getMinElementDiogMatrix(inputMatrix: mainMatrix))")
    print("Avg : \(getAvgNum(inputArr: mainMatrix.last!)!)")
    print("Their difference : \(Double(getMinElementDiogMatrix(inputMatrix: mainMatrix)) - getAvgNum(inputArr: mainMatrix.last!)!)")
}

func main()
{
    firstTask()
    secondTask()
}

main()