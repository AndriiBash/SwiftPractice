//-------------------------------------------------------------------------------------------
//
//  Project SwiftPractice
//  Copyright © 2023. All Rights Reserved.
//
//  OS:           macOS 13.4 (Ventura)
//  FILE:         9Lab.swift
//  AUTHOR:       Andrii Izbash
//
//  Project link: https://github.com/AndriyPetrovic/SwiftPractice
//-------------------------------------------------------------------------------------------

/*
    Task 1
    A sequence of characters followed by a dot is
    specified (the dot is not included in the  sequence
    itself). Print the text by removing all the letters
    B that are immediately preceded by theletter C

    Task 2
    Given a sequence of characters x1,x2,...,xn. Transform
    this sequence by replacing + with - and * with /

    Task 3
    Given a sequence of symbols s1,s2,...,sn Find out
    in whose sequence there are five consecutive letters a
*/

import Foundation

func getStr() -> String
{
    print("Write string : ", terminator: "")
    return readLine()!
}

func removeBAfterC(inputStr: String) -> String
{
    return inputStr.replacingOccurrences(of: "BC", with: "C")
}

func removePlusAndMul(inputStr: String) -> String
{
    var modStr: String = inputStr

    modStr = modStr.replacingOccurrences(of: "+", with: "-")
    modStr = modStr.replacingOccurrences(of: "*", with: "/")
    
    return modStr
}

func hasFiveConsecutiveA(inputStr: String) -> Bool
{
    return inputStr.contains("aaaaa")
}

func firstTask()
{
    print("\u{001B}[0;36m[First task]\u{001B}[0m")

    let mainStr: String = getStr()

    print("String after delete char B after C : \(removeBAfterC(inputStr: mainStr))")
}

func secondTask()
{
    print("\n\u{001B}[0;36m[Second task]\u{001B}[0m")

    let mainStr: String = getStr()

    print("The string after replacing the characters + with -, and the character * with / : \(removePlusAndMul(inputStr: mainStr))")
}

func thirdTask()
{
    print("\n\u{001B}[0;36m[Third task]\u{001B}[0m")

    let mainStr: String = getStr()

    print("The sequence of five letters a in a string : \(hasFiveConsecutiveA(inputStr: mainStr))")
}

func main()
{
    firstTask()
    secondTask()
    thirdTask()
}

main()
