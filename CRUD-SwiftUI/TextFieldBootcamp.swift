//
//  TextFieldBootcamp.swift
//  CRUD-SwiftUI
//
//  Created by Manyuchi, Carrington C on 2025/04/02.
//

import SwiftUI

struct TextFieldBootcamp: View {
    
    @State private var textFieldText: String = ""
    @State private var dataArray: [String] = []
    
    var body: some View {
        NavigationStack {
            ZStack {
                VStack {
                    TextField("Type something here...", text: $textFieldText)
                        //.textFieldStyle(.roundedBorder)
                        .padding()
                        .background(Color.gray.opacity(0.3))
                        .clipShape(RoundedRectangle(cornerRadius: 25))
                        .font(.headline)
                        .foregroundStyle(.red)
                    
                    Button {
                        if textIsAppropiate() {
                            saveText()
                        }
                    } label: {
                        Text("Save".uppercased())
                            .padding(.horizontal)
                            .padding()
                            .frame(maxWidth: .infinity)
                            .background(textIsAppropiate() ? Color.blue : .gray)
                            .clipShape(RoundedRectangle(cornerRadius: 25))
                            .foregroundStyle(.white)
                            .font(.headline)
                        
                    }
                    .disabled(!textIsAppropiate())
                    
                    ForEach(dataArray, id: \.self) { data in
                        Text(data)
                    }
                    Spacer()
                    
                }
                .padding()
            }
            .navigationTitle("TextField Bootcamp")
        }
    }
    
    func textIsAppropiate() -> Bool {
        if textFieldText.count >= 3 {
            return true
        }
        return false
    }
    
    func saveText() {
        dataArray.append(textFieldText)
        textFieldText = ""
    }
}

#Preview {
    TextFieldBootcamp()
}
