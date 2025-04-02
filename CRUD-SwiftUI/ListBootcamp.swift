//
//  ContentView.swift
//  CRUD-SwiftUI
//
//  Created by Manyuchi, Carrington C on 2025/04/01.
//

import SwiftUI

struct ListBootcamp: View {
    
    @State private var fruits: [String] = [
        "apple", "orange", "banana", "peach", "pineapple"
    ]
    
    @State private var veggies: [String] = [
        "tomato", "potato", "carrot", "onion", "broccoli"
    ]
    
    var body: some View {
        NavigationStack {
            List {
                Section {
                    ForEach(fruits, id: \.self) { fruit in
                        Text(fruit.capitalized)
                    }
//                    .onDelete { index in
//                        delete(indexSet: index)
//                    }
//                    .onMove { indexSet, newOffSet in
//                        move(indexSet: indexSet, newOffSet: newOffSet)
//                    }
                    .onDelete(perform: delete)
                    
                    .onMove(perform: move(indexSet:newOffSet:))
                } header: {
                    Text("Fruits")
                }
                
                Section {
                    ForEach(veggies, id: \.self) { veggie in
                        Text(veggie.capitalized)
                    }
                } header: {
                    Text("Veggies")
                        .foregroundStyle(Color.red)
                }

            }
            
            .listStyle(.insetGrouped)
            .tint(.red)
            .navigationTitle("Grocery List")
            .toolbar {
                ToolbarItem(placement: .topBarLeading) {
                    EditButton()
                }
                ToolbarItem(placement: .topBarTrailing) {
                    Button("Add") {
                        add()
                    }
                }
            }
        }
        .tint(.red)
        .padding()
    }
    
    func delete(indexSet: IndexSet) {
        fruits.remove(atOffsets: indexSet)
    }
    
    func move(indexSet: IndexSet, newOffSet: Int) {
        fruits.move(fromOffsets: indexSet, toOffset: newOffSet)
    }
    
    func add() {
        fruits.append("Coconut")
    }
}

#Preview {
    ListBootcamp()
}
