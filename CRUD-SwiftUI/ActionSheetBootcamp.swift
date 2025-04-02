//
//  ActionSheetBootcamp.swift
//  CRUD-SwiftUI
//
//  Created by Manyuchi, Carrington C on 2025/04/02.
//

import SwiftUI

struct ActionSheetBootcamp: View {
    
    @State private var showActionSheet: Bool = false
    @State private var actionSheetOption: ActionSheetOptions? = .isOtherPost
    
    enum ActionSheetOptions {
        case isMyPost
        case isOtherPost
    }
    
    var body: some View {
        
        VStack {
            HStack {
                Circle()
                    .frame(width: 30, height: 30)
                Text("@username")
                Spacer()
                Button {
                    actionSheetOption = .isMyPost
                    showActionSheet.toggle()
                } label: {
                    Image(systemName: "ellipsis")
                }
                .tint(.primary)

            }
        }
        .padding(.horizontal)
        Rectangle()
            .aspectRatio(1.0, contentMode: .fit)
        
//        Button("Click Me") {
//            showActionSheet.toggle()
//        }
        .actionSheet(isPresented: $showActionSheet) {
            getActionSheet()
        }
    }
    
    func getActionSheet() -> ActionSheet {
       // ActionSheet(title: Text("This is the title"))
        
//        let button1: ActionSheet.Button = .default(Text("DEFAULT"))
//        let Button2: ActionSheet.Button = .destructive(Text("DESTRUCTIVE"))
//        let cancelButton: ActionSheet.Button = .cancel()
//        
//        return ActionSheet(
//            title: Text("This is the title"),
//            message: Text("This is my customised message"),
//            buttons: [button1, Button2, cancelButton]
//        )
        
        
        let shareButton: ActionSheet.Button = .default(Text("Share")) {
            // add ccode to share post
        }
        
        let reportButton: ActionSheet.Button = .destructive(Text("Report")) {
            
        }
        
        let cancelButton: ActionSheet.Button = .cancel()
        
        let title = Text("What would you like to do")
        switch actionSheetOption {
        case .isMyPost:
            return ActionSheet(
                title: title ,
                message: Text(""),
                buttons: [shareButton, reportButton, cancelButton]
            )
        case .isOtherPost:
            return ActionSheet(
                title: title,
                message: Text(""),
                buttons: [shareButton, reportButton, cancelButton]
                )
        case .none:
            return ActionSheet(
                title: title,
                message: Text(""),
                buttons: [shareButton, reportButton, cancelButton]
                )
        }
    }
}

#Preview {
    ActionSheetBootcamp()
}
