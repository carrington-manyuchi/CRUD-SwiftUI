//
//  TabViewBootcamp.swift
//  CRUD-SwiftUI
//
//  Created by Manyuchi, Carrington C on 2025/04/02.
//

import SwiftUI

struct TabViewBootcamp: View {
    
    @State private var selectedTab: Int = 0
    
    var body: some View {
        TabView(selection: $selectedTab) {
            HomeView(selectedTab: $selectedTab)
                .tabItem {
                    Image(systemName: "house")
                    Text("Home")
                }
                .tag(0)
            
            Text("Settings Screen")
                .tabItem {
                    Image(systemName: "gear")
                    Text("Settings")
                }
                .tag(1)
            
            Text("Profile Screen")
                .tabItem {
                    Image(systemName: "person")
                    Text("Profile")
                }
                .tag(2)
            
            Text("Notifications Screen")
                .tabItem {
                    Image(systemName: "bell")
                    Text("Notifications")
                }
                .tag(3)
        }
    }
}


#Preview {
    TabViewBootcamp()
}

struct HomeView: View {
    
    @Binding var selectedTab: Int
    var body: some View {
        ZStack {
            Color.red
                .edgesIgnoringSafeArea(.top)
            VStack {
                Text("Home Tab")

                
                Button {
                    selectedTab = 2
                } label: {
                    Text("Go to Profile")
                        .font(.headline)
                        .padding()
                        .padding(.horizontal, 40)
                        .background(Color.white)
                        .clipShape(RoundedRectangle(cornerRadius: 25))
                        .foregroundColor(.blue)
                        .shadow(radius: 10)
                }
                
                
               
            }
            
                
        }
    }
}
