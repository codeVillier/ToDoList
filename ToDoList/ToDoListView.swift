//
//  ToDoListView.swift
//  ToDoList
//
//  Created by Oscar De Villiers on 2026/04/11.
//

import SwiftUI

struct ToDoListView: View {
    var body: some View {
        NavigationStack {
            VStack {
                NavigationLink {
                    // Destination View
                    DetailView()
                } label: {
                    Image(systemName: "eye")
                    Text("Show the new view!")
                }
                .buttonStyle(.glassProminent)
            }
        }
        .padding()
    }
}

#Preview {
    ToDoListView()
}
