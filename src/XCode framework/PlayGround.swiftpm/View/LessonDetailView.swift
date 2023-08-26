//
//  SwiftUIView.swift
//  
//
//  Created by Андрiй on 26.08.2023.
//

import SwiftUI

struct LessonDetailView: View {
    
    var lesson: Lessons
    
    var body: some View {
        Text(lesson.title)
    }
}

struct LessonDetailView_Previews: PreviewProvider {
    static var previews: some View {
        LessonDetailView(lesson: Lessons(id: "0",
                                         title: "Математика",
                                         imageUrl: "404",
                                         hourLesson: 20,
                                         descript: "Математика – це наука про кількісні відносини та просторові форми дійсного світу."))
    }
}
