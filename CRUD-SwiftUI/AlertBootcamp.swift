//
//  AlertBootcamp.swift
//  CRUD-SwiftUI
//
//  Created by Manyuchi, Carrington C on 2025/04/01.
//

import SwiftUI

struct AlertBootcamp: View {
    
    @State private var showAlert: Bool = false
    @State var alertTitle: String = ""
    @State private var alertMessage: String = ""
    @State private var backgroundColor: Color = .cyan
    @State var alertType: MyAlerts? = nil
    
    enum MyAlerts {
        case success
        case error
    }
    
    var body: some View {
        ZStack {
            backgroundColor
            Button("Click here") {
                alertType = .success
                showAlert.toggle()
            }
            .alert(isPresented: $showAlert) {
                //Alert(title: Text("There was an error"))
                //            Alert(
//                                title: Text("Title"),
//                                message: Text("Here we will describe the error"),
//                                dismissButton: .destructive(Text("dismiss"))
//                            )
//                Alert(title: Text("Title"), primaryButton: .cancel(Text("Cancel")), secondaryButton: .destructive(Text("DELETE")))
                getAlert()
            }
        }
    }
    
    private func getAlert() -> Alert {
//        return Alert(
//            title: Text("Title"),
//            message: Text("Here we will describe the error"),
//            dismissButton: .destructive(Text("dismiss"))
//        )
        
        switch alertType {
        case .success:
            return Alert(title: Text("Success"))
        case .error:
            return Alert(title: Text("Error"))
        default:
            return Alert(title: Text("Default"))
        }
    }
}

#Preview {
    AlertBootcamp()
}
