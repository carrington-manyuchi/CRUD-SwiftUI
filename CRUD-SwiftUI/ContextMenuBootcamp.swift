//
//  ContextMenuBootcamp.swift
//  CRUD-SwiftUI
//
//  Created by Manyuchi, Carrington C on 2025/04/02.
//

import SwiftUI

struct ContextMenuBootcamp: View {
    
    @State private var backgroundColor: Color = .blue
    
    var body: some View {
        ZStack {
            VStack(alignment: .leading) {
                Image(systemName: "house.fill")
                    .font(.title)
                Text("Swiftful thinking")
                    .font(.headline)
                Text("How to use context menu")
                    .font(.headline)
            }
            
            .padding(30)
            .background(
                RoundedRectangle(cornerRadius: 30)
                    .fill(Color.blue)
            )
            .foregroundStyle(.white)
            .clipShape(RoundedRectangle(cornerRadius: 30))
            .contextMenu {
                Button {
                    
                } label: {
                    Label("Share Post", systemImage: "flame.fill")
                }
                
                Button {
                    
                } label: {
                    Label("Save Post", systemImage: "square.and.arrow.up")
                }


            }
        }
    }
}

#Preview {
    ContextMenuBootcamp()
}
