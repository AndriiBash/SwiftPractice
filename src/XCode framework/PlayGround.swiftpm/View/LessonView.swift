//
//  lessonView.swift
//  PlayGround
//
//  Created by Андрiй on 25.08.2023.
//

import SwiftUI

struct LessonView: View
{
    let layot = [GridItem(.adaptive(minimum: screen.width/2.4))] // сетка
    
    var body: some View
    {
        ScrollView(.vertical, showsIndicators: false)
        {
            Section("Популярні курси")
            {
                ScrollView(.horizontal, showsIndicators: false)
                {
                    LazyHGrid(rows: layot, spacing: 12)
                    {
                        ForEach(LessonViewModel.shared.popularLessons, id: \.id) // проходимся по всем item уроков
                        { item in
                            NavigationLink
                            {
                                LessonDetailView(lesson: item)
                            }
                            label:
                            {
                                LessonCell(lesson: item)
                                    .foregroundColor(Color.black) // fix blue color text
                            }
                        }
                    }.padding()
                }
            }
            
            
            Section("Звичайні курси")
            {
                ScrollView(.vertical, showsIndicators: false)
                {
                    LazyVGrid(columns: layot, spacing: 12)
                    {
                        ForEach(LessonViewModel.shared.popularLessons, id: \.id) // проходимся по всем item уроков
                        { item in
                            NavigationLink
                            {
                                LessonDetailView(lesson: item)
                            }
                            label:
                            {
                                LessonCell(lesson: item)
                                    .foregroundColor(Color.black)
                            }
                        }
                    }.padding()
                }
            }
            
        }.navigationBarHidden(false) // показать верхний бар навигации
            .navigationTitle(Text("Лекції"))
        
    }
}

struct lessonView_Previews: PreviewProvider
{
    static var previews: some View
    {
        LessonView()
    }
}
