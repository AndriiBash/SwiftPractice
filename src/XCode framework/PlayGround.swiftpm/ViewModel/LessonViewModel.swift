//
//  LessonViewModel.swift
//  
//
//  Created by Андрiй on 26.08.2023.
//

import Foundation

class LessonViewModel: ObservableObject //объект за которым можно наблюдать
{
    static let shared = LessonViewModel()
    
    var popularLessons = [
        Lessons(id: "0",
                title: "Математика",
                imageUrl: "Not Found",
                hourLesson: 20,
                descript: "Математика – це наука про кількісні відносини та просторові форми дійсного світу."),
        
        Lessons(id: "1",
                title: "Укр.Мова",
                imageUrl: "Not Found",
                hourLesson: 10,
                descript: "Україснька мова - національна мова українців."),
        
        Lessons(id: "2",
                title: "Географія",
                imageUrl: "Not Found",
                hourLesson: 53,
                descript: "Географія - система наук, що вивчає географічну оболонку Землі."),
        
        Lessons(id: "3",
                title: "Біологія",
                imageUrl: "Not Found",
                hourLesson: 15,
                descript: "Біологія – система наук, що вивчає життя в усіх його проявах."),
        
        Lessons(id: "4",
                title: "Інформатика",
                imageUrl: "Not Found",
                hourLesson: 53,
                descript: "Інформатика – наука про інформацію, методи та засоби її опрацювання."),
    ]
    
   // var defaultLessons = []

}
