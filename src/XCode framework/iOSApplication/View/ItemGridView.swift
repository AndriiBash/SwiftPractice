//
//  ItemGridView.swift
//  iOSApplication
//
//  Created by Андрiй on 27.08.2023.
//

import SwiftUI

struct ItemGridView: View
{
    var body: some View
    {

            ScrollView(.vertical, showsIndicators: false)
            {
                Section(header: Text("Айтемы").font(.title2.bold()).padding(.top, 4))
                {
                    ForEach(1...15, id: \.self)
                    { index in
                        Text("Элемент \(index)")
                            .font(.title3)
                            .padding()
                            .padding(.horizontal, 35)
                            .background(Color.gray.opacity(0.2))
                            .cornerRadius(10)
                    }.padding(1.5)
                }
                Text("Как-же мы постарели, но остались детьми").padding(.top, 20)
            }
            .navigationBarHidden(false)
            .navigationTitle(Text("АйтемыНавигация"))
            .navigationBarTitleDisplayMode(.inline)
            .toolbar {
                ToolbarItem(placement: .navigationBarLeading) {
                    Button(action: {
                        // действия КНОПКИ СЕЛВА
                    }) {
                        Image(systemName: "arrow.backward")
                    }
                }
                
                ToolbarItem(placement: .navigationBarTrailing) {
                    Button(action: {
                        // действия для кнопки справа
                    }) {
                        Text("ПрАЙТЕМ")
                        
                    }
                }
            }

        // navigationBarLeading - слева
        // navigationBarTrailing - справа
        // if need big navigation bar нужно всё обернуть в NavigationView
                
    }
}

struct ItemGridView_Previews: PreviewProvider
{
    static var previews: some View
    {
        ItemGridView()
    }
}
