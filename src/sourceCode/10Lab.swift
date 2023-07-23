//-------------------------------------------------------------------------------------------
//
//  Project SwiftPractice
//  Copyright © 2023. All Rights Reserved.
//
//  OS:           macOS 13.4 (Ventura)
//  FILE:         10Lab.swift
//  AUTHOR:       Andrii Izbash
//
//  Project link: https://github.com/AndriyPetrovic/SwiftPractice
//-------------------------------------------------------------------------------------------

/*
    Task 1
    Groups of symbols separated by spaces (one or more)
    and which do not have spaces within them, will be
    called words. The text is given. Write a program
    according to the condition Count how many times
    the entered word occurs in the line. (Use class)
*/

import Foundation

class stringDetected
{
    var mainString: String
    var wordAlarm: String 

    init(mainString: String = "", wordAlarm: String = "")
    {
        self.mainString = mainString
        self.wordAlarm = wordAlarm
    }
    
    func setAlarmWord(_ newAlarmWord: String)
    {
        self.wordAlarm = newAlarmWord
    }

    func setMainString(_ newString: String)
    {
        self.mainString = newString
    }

    func countAlarmWord()
    {
        let words = mainString.components(separatedBy: CharacterSet(charactersIn: " ,.?!")) // Write all punctuation marks to ignore them
        let wordCount = words.filter { $0.lowercased() == wordAlarm.lowercased() }.count

        print("We have this text : \(mainString) \nWord-alarm : \(wordAlarm)\nCount word : \(wordCount)")
    }
}

func getStr(_ getMessage: String = "") -> String
{
    print("\(getMessage) : ", terminator: "")
    return readLine()!
}

func main()
{
    print("\u{001B}[0;36m[First task]\u{001B}[0m")

    let detecter = stringDetected()

    detecter.setMainString(getStr("Write \u{001B}[0;32mmain\u{001B}[0m text"))
    detecter.setAlarmWord(getStr("Write\u{001B}[0;31m alarm \u{001B}[0mword text"))
    
    print()

    detecter.countAlarmWord()
}

main()