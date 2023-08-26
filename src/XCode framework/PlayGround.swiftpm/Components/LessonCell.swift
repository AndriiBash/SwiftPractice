//
//  LessonCell.swift
//  PlayGround
//
//  Created by Андрiй on 26.08.2023.
//

import SwiftUI

struct LessonCell: View
{
    
    var lesson: Lessons
    
    var body: some View
    {
        
        VStack(spacing: 2)
        {
            Image("MathPH")
                .resizable()
                .aspectRatio(contentMode: .fill)
                .frame(maxWidth: screen.width * 0.45)
                .clipped()
                .cornerRadius(16)
            
            HStack
            {
                Text(lesson.title)
                    .font(.custom("AvenirNext-regular", size: 12))
                
                Spacer()
                
                Text("\(lesson.hourLesson) год")
                    .font(.custom("AvenirNext-bold", size: 12))
            }
            .padding(.horizontal, 6)
            .padding(.bottom, 6)
            
        }.frame(width: screen.width * 0.45, height: screen.height * 0.25)
             .background(Color.white) // if need shadow for all Cell
             .cornerRadius(16)
             .shadow(radius: 6)
        
    }
}

struct LessonCell_Previews: PreviewProvider
{
    static var previews: some View
    {
        LessonCell(lesson: Lessons(id: "0",
                                   title: "Математика",
                                   imageUrl: "404",
                                   hourLesson: 20,
                                   descript: "Математика – це наука про кількісні відносини та просторові форми дійсного світу."))
    }
}
