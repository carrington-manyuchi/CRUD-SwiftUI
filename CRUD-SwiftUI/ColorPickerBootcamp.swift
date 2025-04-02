//
//  ColorPickerBootcamp.swift
//  CRUD-SwiftUI
//
//  Created by Manyuchi, Carrington C on 2025/04/02.
//

import SwiftUI

struct ColorPickerBootcamp: View {
    
    @State private var selectedColor: Color = .blue
    
    var body: some View {
        NavigationStack {
            ZStack {
                selectedColor.edgesIgnoringSafeArea(.all)
                VStack {
                    ColorPicker("Color", selection: $selectedColor)
                        .padding()
                        .background(.black)
                        .clipShape(RoundedRectangle(cornerRadius: 25))
                        .foregroundStyle(.white)
                        .font(.headline)
                        .padding(10)
                }
                .padding()
            }
        }
    }
}

#Preview {
    ColorPickerBootcamp()
}
