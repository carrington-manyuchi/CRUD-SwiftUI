//
//  ToggleBootcamp.swift
//  CRUD-SwiftUI
//
//  Created by Manyuchi, Carrington C on 2025/04/02.
//

import SwiftUI

struct ToggleBootcamp: View {
    
    @State private var toggleIsOn = false
    
    var body: some View {
        NavigationStack {
            ZStack {
                VStack {
                    
                    
                    HStack {
                        Text("Status")
                        Text(toggleIsOn ? "Online" : "Offline")
                    }
                    
                    Toggle(isOn: $toggleIsOn) {
                        Text("Label")
                    }
                    .tint(.blue)
                }
                .padding()
            }
        }
    }
}

#Preview {
    ToggleBootcamp()
}
