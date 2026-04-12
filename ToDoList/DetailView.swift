//
//  DetailView.swift
//  ToDoList
//
//  Created by Oscar De Villiers on 2026/04/11.
//

import SwiftUI

struct DetailView: View {
    var passedValue: String // Dont initialize - it will be passed from the parent view
    @Environment(\.dismiss) private var dismiss
    
    var body: some View {

        VStack {
            Image(systemName: "swift")
                .resizable()
                .scaledToFit()
                .foregroundStyle(.orange)
            Text("You Are a Swifty Legend!\nAnd you passed over the value \(passedValue)")
                .font(.largeTitle)
                .multilineTextAlignment(.center)
            
            Spacer()
            
            Button("Get Back!") {
                dismiss()
            }
            .buttonStyle(.glassProminent)
        }
        .padding()
    }
}

#Preview {
    DetailView(passedValue: "Item 1")
}
