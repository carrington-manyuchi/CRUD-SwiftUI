//
//  SliderBootcamp.swift
//  CRUD-SwiftUI
//
//  Created by Manyuchi, Carrington C on 2025/04/02.
//

import SwiftUI

struct SliderBootcamp: View {
    @State private var sliderValue: Double = 10
    @State private var color: Color = .red
    
    var body: some View {
        ZStack {
            ZStack {
                VStack(spacing: 30) {
                    Text("Rating:")
                        .font(.title)
                    Text(String(format: "%.0f", sliderValue))
                        .font(.headline)
                    Slider(value: $sliderValue)
                        .tint(.red)
                    
                    Slider(value: $sliderValue, in: 1...5, step: 0.5)
                        .tint(.blue)
                    
                    Slider(value: $sliderValue, in: 1...5) {
                        
                    } minimumValueLabel: {
                        Text("1")
                    } maximumValueLabel: {
                        Text("5")
                    } onEditingChanged: { _ in
                        color = .green
                    }

                }
            }
            .padding(.horizontal, 30)
        }
    }
}

#Preview {
    SliderBootcamp()
}
