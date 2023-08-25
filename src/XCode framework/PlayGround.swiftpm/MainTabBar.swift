//
//  MainTabBar.swift
//  PlayGround
//
//  Created by Андрiй on 25.08.2023.
//

import SwiftUI

struct MainTabBar: View
{
    var body: some View
    {
        TabView
        {
            LessonView()
                .tabItem
                {
                    VStack{
                        Image(systemName: "square.and.pencil.circle.fill")
                        Text("Лекції")
                    }
                }
            
            TaskView()
                .tabItem
                {
                    VStack
                    {
                        Image(systemName: "folder.badge.person.crop")
                        Text("Завдання")
                    }
                }
            
            ProfileView()
                .tabItem
                {
                    VStack
                    {
                        Image(systemName: "person.fill")
                        Text("Мій профіль")
                    }
                }
            
            
        }
    }
}

struct MainTabBar_Previews: PreviewProvider
{
    static var previews: some View
    {
        MainTabBar()
    }
}
