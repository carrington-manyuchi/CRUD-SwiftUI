//
//  DatePickerBootcamp.swift
//  CRUD-SwiftUI
//
//  Created by Manyuchi, Carrington C on 2025/04/02.
//

import SwiftUI

struct DatePickerBootcamp: View {
    
    @State private var selectedDate: Date = Date()
    private let startingDate: Date = Calendar.current.date(from: DateComponents(year: 2008)) ?? Date()
    private let endingDate: Date = Date()
    
    private var dateFormatter: DateFormatter {
        let formatter = DateFormatter()
        formatter.dateFormat = "yyyy-MM-dd"
        formatter.timeStyle = .short
        return formatter
    }
    
    var body: some View {
        NavigationStack {
            ZStack {
                VStack(spacing: 100) {
                    DatePicker("Select a date", selection: $selectedDate)
                       // .datePickerStyle(.automatic)
                    
                    DatePicker(selection: $selectedDate, displayedComponents: [.date]) {
                        Text("Selected date")
                    }
                    
                    
                    DatePicker("Selected date", selection: $selectedDate, in: startingDate...endingDate, displayedComponents: [.date])
                }
            }
        }
    }
}

#Preview {
    DatePickerBootcamp()
}
