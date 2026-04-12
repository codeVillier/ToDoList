//
//  ToDoListView.swift
//  ToDoList
//
//  Created by Oscar De Villiers on 2026/04/11.
//

import SwiftUI

struct ToDoListView: View {
    let toDos = ["Learn Swift",
                 "Build Apps",
                 "Change the World",
                 "Bring the Awesome",
                 "Take a Vacation"]
    
    var body: some View {
        NavigationStack {
            List {
                ForEach(toDos, id: \.self) { todo in
                    NavigationLink {
                        DetailView(passedValue: todo)
                    } label: {
                        Text(todo)
                    }
                }
                
            }
            .navigationTitle("To Do List:")
            .listStyle(.plain)
        }
    }
}

#Preview {
    ToDoListView()
}
