//-------------------------------------------------------------------------------------------
//
//  Project SwiftPractice
//  Copyright © 2023. All Rights Reserved.
//
//  OS:           macOS 13.4 (Ventura)
//  FILE:         12Lab.swift
//  AUTHOR:       Andrii Izbash
//
//  Project link: https://github.com/AndriyPetrovic/SwiftPractice
//-------------------------------------------------------------------------------------------

/*
    Task 1
    Create a structure and do something with it
*/

import Foundation

struct student
{
    var name: String
    var age: Int
    var avgScore: Double
    var group: String

    init(name: String, group: String)
    {
        self.name = name
        age = 18
        avgScore = 2
        self.group = group
    }

    mutating func addScore(_ score: Double)
    {
        avgScore += score
    }

    mutating func setName()
    {
        print("Enter new name student : ", terminator : "")
        self.name = readLine()!
    }
}

func main()
{
    var testStudent = student(name: "John", group: "IPZ-ZV")
   
    print("\u{001B}[0;36m[First task]\u{001B}[0m\nMatrix:")
    print("We have info student : \(testStudent)")

    testStudent.setName()
    testStudent.addScore(Double(0.4))

    print("We have \u{001B}[0;32mnew\u{001B}[0m info student : \(testStudent)")
}

main()