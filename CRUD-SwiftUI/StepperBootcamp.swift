//
//  StepperBootcamp.swift
//  CRUD-SwiftUI
//
//  Created by Manyuchi, Carrington C on 2025/04/02.
//

import SwiftUI

struct StepperBootcamp: View {
    
    @State private var stepperValue: Int = 10
    
    @State var widthIncrement: CGFloat = 0
    @State var heightIncrement: Int = 0
    
    var body: some View {
        NavigationStack {
            ZStack {
                VStack(spacing: 30) {
                    Stepper("Stepper: \(stepperValue)", value: $stepperValue)
                    
                    RoundedRectangle(cornerRadius: 10)
                        .frame(width: 100 + widthIncrement, height:  100)
                    
                    Stepper("Second Stepper") {
                        incrementWidth(amount: 10)
                    } onDecrement: {
                        incrementWidth(amount: -10)
                    }

                    
                }
                .padding()
            }
            .navigationTitle("Stepper Bootcamp")
        }
    }
    
    func incrementWidth(amount: CGFloat) {
        withAnimation {
            widthIncrement += amount
        }
    }
}

#Preview {
    StepperBootcamp()
}
