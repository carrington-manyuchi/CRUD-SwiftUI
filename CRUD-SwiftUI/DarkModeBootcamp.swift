//
//  DarkModeBootcamp.swift
//  CRUD-SwiftUI
//
//  Created by Manyuchi, Carrington C on 2025/04/02.
//

import SwiftUI

struct DarkModeBootcamp: View {
    
    @Environment(\.colorScheme) var colorScheme
    
    var body: some View {
        NavigationStack {
            ZStack {
                VStack(spacing: 20) {
                    
                    Text("This color is primary")
                        .font(.largeTitle)
                        .fontWeight(.semibold)
                        .foregroundStyle(.primary)
                    
                    Text("This color is secondary")
                        .font(.largeTitle)
                        .fontWeight(.semibold)
                        .foregroundStyle(.secondary)
                    
                    Text("This color is black")
                        .font(.largeTitle)
                        .fontWeight(.semibold)
                        .foregroundStyle(.black)
                    
                    Text("This color is white")
                        .font(.largeTitle)
                        .fontWeight(.semibold)
                        .foregroundStyle(.white)
                    
                    Text("This color is Adaptive Color")
                        .font(.largeTitle)
                        .fontWeight(.semibold)
                        .foregroundStyle(Color("tertiaryColor"))
                    
                    Text("This color is locally Adaptive Color")
                        .font(.largeTitle)
                        .fontWeight(.semibold)
                        .foregroundStyle(colorScheme == .light ? .green : .yellow)
                }
            }
            .navigationTitle("Dark Mode Bootcamp")
        }
    }
}

#Preview {
    DarkModeBootcamp()
}
