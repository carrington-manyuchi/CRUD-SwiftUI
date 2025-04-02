//
//  PickerBootcamp.swift
//  CRUD-SwiftUI
//
//  Created by Manyuchi, Carrington C on 2025/04/02.
//

import SwiftUI

struct PickerBootcamp: View {
    
    @State private var selection: String = "2"
    let filterOptions: [String] = [
        "Most recent", "Most Popular", "Most Liked"
    ]
    
    
    init() {
        UISegmentedControl.appearance().selectedSegmentTintColor = .blue
        let attributes: [NSAttributedString.Key: Any] = [
            .foregroundColor: UIColor.white,
            .font: UIFont.systemFont(ofSize: 15, weight: .semibold)
            
            ]
        UISegmentedControl.appearance().setTitleTextAttributes(attributes, for: .selected)
    }
    
    var body: some View {
        NavigationStack {
            ZStack {
//                VStack {
//                    
//                    HStack {
//                        Text("Age:")
//                        Text(selection)
//                    }
//                    Picker(
//                        selection: $selection) {
//                            ForEach(18..<99, id: \.self) { age in
//                                Text("\(age)")
//                                    .tag("\(age)")
//                            }
//                        } label: {
//                            Text("Click to select age")
//                        }
//                        .pickerStyle(.menu)
//
//                }
//                .padding()
                
                VStack {
                    

                    Picker(selection: $selection) {
                        ForEach(filterOptions.indices, id: \.self) { index in
                            Text(filterOptions[index])
                                .tag(filterOptions[index])
                        }
                    } label: {
                        Text("Click to select age")
                    }
                    .pickerStyle(.segmented)
                    
                    

                }
            }
        }
    }
}

#Preview {
    PickerBootcamp()
}
