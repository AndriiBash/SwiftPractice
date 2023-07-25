//-------------------------------------------------------------------------------------------
//
//  Project SwiftPractice
//  Copyright © 2023. All Rights Reserved.
//
//  OS:           macOS 13.4 (Ventura)
//  FILE:         11Lab.swift
//  AUTHOR:       Andrii Izbash
//
//  Project link: https://github.com/AndriyPetrovic/SwiftPractice
//-------------------------------------------------------------------------------------------

/*
    Task 1
    The purpose of the work: to develop practical
    skills in writing and debugging programs when
    working with files.
*/

import Foundation


func getStr(_ getMessage: String = "") -> String
{
    print("\(getMessage) : ", terminator: "")
    return readLine()!
}

func writeFile(text: String, filePath: String)
{
    do 
    {
        try text.write(toFile: filePath, atomically: true, encoding: .utf8)
        print("Write to file completed \u{001B}[0;32msuccessfully\u{001B}[0m!")
        print("Path save file : \(filePath)")
    } 
    catch
    {
        print("\u{001B}[0;31mError \u{001B}[0mwriting to file : \(error)")
    }
}

func readFromFile(filePath: String) -> String?
{
    do
    {
        return try String(contentsOfFile: filePath, encoding: .utf8)
    }
    catch
    {
        print("\u{001B}[0;31mError \u{001B}[0mreading file : \(error)")
        return nil
    }
}

func main()
{
    let pathDir = URL(fileURLWithPath: CommandLine.arguments[0]).deletingLastPathComponent().path
    let textFromUser: String = getStr("Write text")

    writeFile(text: textFromUser, filePath: pathDir + "/writeFile.txt")

    print("Text from file : \(readFromFile(filePath: pathDir + "/writeFile.txt")!)")
}

main()