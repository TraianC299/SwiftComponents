//
//  ActionSheetExample.swift
//  Tutorial
//
//  Created by Traian on 12.08.2022.
//

import SwiftUI

struct ActionSheetExample: View {
    
    @State var openActionSheet = false
    @State var actionSheetOption:ActionSgeetOptions   = .isOtherPost

    
    
    enum ActionSgeetOptions {
        case isMyPost
        case isOtherPost
    }
    
    func getActionSheet() -> ActionSheet {
        //let button1: ActionSheet.Button = .default(Text("Default"))
        //let button2: ActionSheet.Button = .destructive(Text("Destructive"))
        //let button3: ActionSheet.Button = .cancel()
        let shareButton: ActionSheet.Button = .default(Text("Share")){}
        let reportButton: ActionSheet.Button = .destructive(Text("Report")){}
        let deleteButton: ActionSheet.Button = .destructive(Text("Delete")){}
        let cancelButton: ActionSheet.Button = .cancel()
        
        
        switch actionSheetOption {
        case .isMyPost:
            return ActionSheet(
                title:Text("This is the title"),
                message: Text("This is the message"),
                buttons: [shareButton, reportButton, deleteButton, cancelButton]
                )
        case .isOtherPost:
            return ActionSheet(
                title:Text("This is the title"),
                message: Text("This is the message"),
                buttons: [shareButton, reportButton, cancelButton]
                )
        }
        //return ActionSheet(
            //title:Text("This is the title"),
            //message: Text("This is the message"),
            //buttons: [shareButton, reportButton, deleteButton, cancelButton]
        //)
    }
    
    
    var body: some View {
        VStack {
            HStack{
                Circle()
                    .frame(width:30, height:30)
                Text("@username")
                Spacer()
                Button {
                    openActionSheet.toggle()
                    actionSheetOption = .isOtherPost
                } label: {
                    Image(systemName: "ellipsis")
                }
                .foregroundColor(.primary)

            }
            .padding(.horizontal)
            Rectangle()
                .aspectRatio(contentMode: .fit)
            .actionSheet(isPresented: $openActionSheet) {
                getActionSheet()
            
        }
        }
    }
}

struct ActionSheetExample_Previews: PreviewProvider {
    static var previews: some View {
        ActionSheetExample()
    }
}
