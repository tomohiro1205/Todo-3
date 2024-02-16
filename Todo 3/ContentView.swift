//
//  ContentView.swift
//  Todo 3
//
//  Created by 木村朋広 on 2024/02/16.
//

import SwiftUI

struct ContentView: View {
    @State var taskData = [(title: "ジョギングする", completed: false),
                           (title: "お花に水をやる", completed: false),
                           (title: "部屋の掃除をする", completed: false),
                           (title: "本を読む", completed: false),
                           (title: "トイレ掃除", completed: false)]

    var body: some View {
        NavigationStack {
            VStack {
                List(0..<taskData.count, id: \.self) { index in
                    Button {
                        taskData[index].completed.toggle()
                    }  label: {
                        HStack{
                            Image(systemName: taskData[index].completed ? "checkmark.circle.fill" :"circle")


                            Text(taskData[index].title)
                        } //Buttonここまで
                    } //HStackここまで
                    .foregroundColor(.primary)
                } // Listここまで
            } // Vstack　ここまで
            .navigationTitle("Todoリスト")
        } // NavigationStackここまで
    } // bodyここまで
} // ContentViewここまで

#Preview {
    ContentView()
}

