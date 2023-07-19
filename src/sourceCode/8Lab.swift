//-------------------------------------------------------------------------------------------
//
//  Project SwiftPractice
//  Copyright © 2023. All Rights Reserved.
//
//  OS:           macOS 13.4 (Ventura)
//  FILE:         8Lab.swift
//  AUTHOR:       Andrii Izbash
//
//  Project link: https://github.com/AndriyPetrovic/SwiftPractice
//-------------------------------------------------------------------------------------------

/*
    First task
    Data arrays X(8), Y(8), Z(10), W(15), elements of
    which are assigned to the formulas:

    xi=a1i2-a2(5-i);             yi=b1sin(2i)+b2ei-5;
    zi=c1(і-4)+c2sin2(1,5i);     wi=d1ln(0,1i)+d2cos3(і-2,5).

    The values of the coefficients a1,...,d2 are listed in Table 1.

    Table 1
    Variants    a1  a2  b1  b2  c1  c2  d1  d2
       07       3   9   6   5   6   5   6   10

    Find the sum of additional array elements of arrays Х,Z,W.
*/

import Foundation

private enum arraySize
{
    static let sizeX: Int = 8
    static let sizeY: Int = 8
    static let sizeZ: Int = 10
    static let sizeW: Int = 15
}

private enum values
{
    static let a1: Double = 3
    static let a2: Double = 9
    static let b1: Double = 6
    static let b2: Double = 5
    static let c1: Double = 6
    static let c2: Double = 5
    static let d1: Double = 6
    static let d2: Double = 10
}

func roundToThousandths(number: Double) -> Double
{
    return round(number * 1000) / 1000.0
} 

func getSumArr(inputArr: [Double]) -> Double
{
    var sum: Double = 0.0

    for number in inputArr
    {
            sum += number
    }

    return sum
}

func generateArray(inputType: String) -> [Double]
{
    var array = [Double]()

    switch inputType 
    {
        case "x":
            for i in 0..<arraySize.sizeX
            {
                array.append(Double(values.a1 * pow(Double(i),2) - values.a2 * (5 - Double(i))))
            }
        case "y":
            for i in 0..<arraySize.sizeY
            {
                array.append(roundToThousandths(number: Double(values.b1 * sin(Double(2 * i)) + values.b2 * exp(Double(i - 5)))))
            }
        case "z":
            for i in 0..<arraySize.sizeZ
            {
                array.append(roundToThousandths(number: Double(values.c1 * Double(i - 4) + values.c2 * pow(sin(1.5 * Double(i)),2))))
            }
        case "w":
            for i in 0..<arraySize.sizeW
            {
                array.append(roundToThousandths(number: Double(values.d1 * abs(0.1 * Double(i)) + values.d2 * pow(cos(Double(i) - 2.5),3))))
            }
        default:
            for i in 0..<arraySize.sizeW
            {
                array.append(Double(i + Int.random(in: 1...100)))
            }
    }
    return array
}

func main()
{
    let arrayX: [Double] = generateArray(inputType: "x")
    let arrayY: [Double] = generateArray(inputType: "y")
    let arrayZ: [Double] = generateArray(inputType: "z")
    let arrayW: [Double] = generateArray(inputType: "w")

    print("ArrayX : \(arrayX))")
    print("ArrayY : \(arrayY))")
    print("ArrayZ : \(arrayZ))")
    print("ArrayW : \(arrayW))")

    print("Sum of multiple additional elements of arrays Х,Z,W : \(roundToThousandths(number: (getSumArr(inputArr: arrayX) + getSumArr(inputArr: arrayZ) + getSumArr(inputArr: arrayW))))")
}

main()
