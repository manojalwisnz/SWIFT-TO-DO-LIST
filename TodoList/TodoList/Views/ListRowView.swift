//
//  ListRowView.swift
//  TodoList
//
//  Created by Manoj Alwis on 20/07/2024.
//

import SwiftUI

struct ListRowView: View {
    
    let item : ItemModel
    
    var body: some View {
        HStack {
            Image(systemName: item.isCompleted ? "checkmark.circle" : "circle")
                .foregroundColor(item.isCompleted ? .green: .red)
            Text(item.title)
            Spacer()
        }
    }
}


var item1 = ItemModel(title: "First Item!", isCompleted: false)
var item2 = ItemModel(title: "Second Item", isCompleted: true)

#Preview {
    Group {
        ListRowView(item: item1)
        ListRowView(item: item2)
    }
}
