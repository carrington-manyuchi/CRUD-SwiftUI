//
//  TextEditorBootcamp.swift
//  CRUD-SwiftUI
//
//  Created by Manyuchi, Carrington C on 2025/04/02.
//

import SwiftUI

struct TextEditorBootcamp: View {
    
    @State private var backgroundColor: Color = .blue
    @State private var textEditorText: String = ""
    @State private var savedText: String = ""
    
    var body: some View {
        NavigationStack {
            ZStack {
                backgroundColor.edgesIgnoringSafeArea(.all)
                
                VStack {
                    TextEditor(text: $textEditorText)
                        .frame(height: 300)
                        .clipShape(RoundedRectangle(cornerRadius: 25))
                    
                    Button {
                        savedText = textEditorText
                    } label: {
                        Text("Save".uppercased() + " ✍️" )
                            .padding()
                            .padding(.horizontal, 30)
                            .font(.headline)
                            .fontWeight(.semibold)
                            .background(Color.yellow)
                            .clipShape(RoundedRectangle(cornerRadius: 25))
                            .padding()
                    }
                    
                    Text(savedText)
                        .foregroundStyle(.white)
                        .fontWeight(.semibold)
                    Spacer()

                }
               
                .padding()
            }
            .navigationTitle("Text Editor Bootcamp")
        }
    }
    
    
}

#Preview {
    TextEditorBootcamp()
}
